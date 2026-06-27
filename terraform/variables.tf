variable "environment" {
  type = string
}

variable "resource_group" {
  type = string
  default = "cardstore_${var.environment}_rg"
}

variable "location" {
  type = string
  default = "Central India"
}

variable "vnet_name" {
  type = string
  default = "cardstore_${var.environment}_vnet"
}

variable "address_space" {
  type = list(string)
  default = [ "10.0.0.0/24" ]
}

variable "subnets" {
  type = map(object({
    address_prefix = string
  }))
}

variable "cluster_name" {
  type = string
  default = "cardstore_${var.environment}_cluster"
}

variable "container_sku" {
  type    = string
  default = "Basic"
}

variable "acr" {
  type = string
  default = "cardstore_${var.environment}_acr"
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