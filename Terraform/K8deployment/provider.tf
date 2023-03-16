provider "digitalocean" {
  token = var.DO_TOKEN

}


data "digitalocean_kubernetes_cluster" "cluster-info" {
  name = "altschoolass"
}

provider "kubernetes" {
  host  = data.digitalocean_kubernetes_cluster.cluster-info.endpoint
  token = data.digitalocean_kubernetes_cluster.cluster-info.kube_config[0].token
  cluster_ca_certificate = base64decode(
    data.digitalocean_kubernetes_cluster.cluster-info.kube_config[0].cluster_ca_certificate
  )
}

provider "helm" {
  kubernetes {
    host  = data.digitalocean_kubernetes_cluster.cluster-info.endpoint
    token = data.digitalocean_kubernetes_cluster.cluster-info.kube_config[0].token
    cluster_ca_certificate = base64decode(
      data.digitalocean_kubernetes_cluster.cluster-info.kube_config[0].cluster_ca_certificate
    )
  }
}
