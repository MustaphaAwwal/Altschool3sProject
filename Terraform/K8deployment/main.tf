resource "helm_release" "kube-prometheus" {
  name       = "prometheus"
  namespace  = var.namespace
  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "kube-prometheus-stack"
  timeout    = "1200"

}
resource "kubernetes_namespace" "monitoring" {
  metadata {
    name = var.namespace
  }
}