resource "helm_release" "kube_prometheus_stack" {
  name             = "prometheus"
  repository       = "https://prometheus-community.github.io/helm-charts"
  chart            = "kube-prometheus-stack"
  namespace        = "monitoring"
  create_namespace = true
  wait             = false

  values = [
    yamlencode({
      prometheus = {
        prometheusSpec = {
          resources = {
            requests = { memory = "256Mi" }
            limits   = { memory = "1024Mi" }
          }
        }
      }
      grafana = {
        resources = {
          requests = { memory = "128Mi" }
          limits   = { memory = "512Mi" }
        }
      }
      nodeExporter     = { enabled = true }
      kubeStateMetrics = { enabled = true }
    })
  ]
}