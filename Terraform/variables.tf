variable "DO_TOKEN" {}
variable "region" {
  default = "nyc1"
}

variable "clustername" {
  default = "altschoolass"
}

variable "my_version" {
  default = "1.25.4-do.0"
}

variable "poolname" {
  default = "worker-node"
}

variable "k8s_node_count" {
  default = "2"
}
