locals {
  resource_group    = "cardstore_${var.environment}_rg"
  vnet_name         = "cardstore_${var.environment}_vnet"
  cluster_name      = "cardstore_${var.environment}_cluster"
  acr               = "cardstore_${var.environment}_acr"
}