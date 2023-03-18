resource "digitalocean_kubernetes_cluster" "assignment-cluster" {
  name    = var.clustername
  region  = var.region
  version = var.my_version

  tags = ["k8s"]

  node_pool {
    name       = var.poolname
    size       = "s-2vcpu-4gb"
    auto_scale = false
    node_count = var.k8s_node_count
    tags       = ["node-pool-tag"]
  }
}
