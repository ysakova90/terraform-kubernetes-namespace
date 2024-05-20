resource "kubernetes_namespace" "example" {
  metadata {
    name = var.name
    annotations = var.annotations
    labels = var.labels
  }
    
}

