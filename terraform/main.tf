module "cardstoreInfra" {
  source            = "./modules"

  resource_group    = local.resource_group
  location          = var.location
  vnet_name         = local.vnet_name
  address_space     = var.address_space
  subnets           = var.subnets
  cluster_name      = local.cluster_name
  container_sku     = var.container_sku
  acr               = local.acr 
  node_vm_size      = var.node_vm_size

}