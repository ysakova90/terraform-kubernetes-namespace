output namespace {
  description = "Output namespace info"
  value = kubernetes_namespace.example.metadata[0].name 
  }