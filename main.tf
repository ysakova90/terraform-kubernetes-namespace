resource "kubernetes_namespace" "example" {
  metadata {
    name = var.name
    annotations = var.annotations
    labels = var.labels
  }
    
}
resource "kubernetes_resource_quota" "example" {
  metadata {
    name = "po-quota"
    namespace = kubernetes_namespace.example.metadata[0].name
  }
  spec {
    hard = {
      pods = 50
    }
    scopes = ["BestEffort"]
  }
}

resource "kubernetes_limit_range_v1" "example" {
  metadata {
    name = "pod-limit-range"
    namespace = kubernetes_namespace.example.metadata[0].name
  }
  spec {
    limit {
      type = "Pod"
      max = {
        cpu    = "2096m"
        memory = "4Gi"
      }
    }
  }
}

