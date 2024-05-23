variable name {
    description = "Please provide a name"
    type = string
    default = ""
}
variable annotations {
  description = "Please provide annotations"
  type = map
  default= {}
}
variable labels {
  description = "Please provide labels"
  type = map
  default= {}
}
variable pod_quota {
  description = "Please specify pod quaota"
  type = string
  default = ""
  }
variable pod_cpu_limit {
  description = "Please provide cpu limit"
  type = string 
  default = ""
}
variable pod_memory_limit {
   description = "Please provide memory limit"
   type = string 
   default = ""
}
   