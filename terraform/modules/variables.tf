variable "resource_group" {
  type = string
}

variable "location" {
  type = string
}

variable "vnet_name" {
  type = string
}

variable "address_space" {
  type = list(string)
}

variable "subnets" {
  type = map(object({
    address_prefix = string
  }))
}

variable "cluster_name" {
  type = string
}

variable "container_sku" {
  type    = string
  default = "Basic"
}

variable "acr" {
  type = string
}

variable "node_vm_size" {
  type    = string
  default = "Standard_DS2_v2"
}

variable "node_count" {
  type    = number
  default = 1
}

variable "enable_auto_scaling" {
  type    = bool
  default = false
}

variable "min_count" {
  type    = number
  default = 1
}

variable "max_count" {
  type    = number
  default = 3
}

variable "kubernetes_version" {
  type    = string
  default = null
}

variable "network_plugin" {
  type    = string
  default = "azure"
}

variable "load_balancer_sku" {
  type    = string
  default = "standard"
}

variable "outbound_type" {
  type    = string
  default = "loadBalancer"
}

variable "tags" {
  type    = map(string)
  default = {}
}