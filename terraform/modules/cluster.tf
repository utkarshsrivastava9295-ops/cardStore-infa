resource "azurerm_kubernetes_cluster" "mycluster" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = azurerm_resource_group.myrg.name
  kubernetes_version  = var.kubernetes_version

  default_node_pool {
    name               = "agentpool"
    vm_size            = var.node_vm_size
    node_count         = var.node_count
    min_count          = var.min_count
    max_count          = var.max_count
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin    = var.network_plugin
    load_balancer_sku = var.load_balancer_sku
    outbound_type     = var.outbound_type
  }

  tags = var.tags
}

resource "azurerm_container_registry" "myacr" {
  name                = var.acr
  location            = var.location
  resource_group_name = azurerm_resource_group.myrg.name
  sku                 = var.container_sku
  admin_enabled       = false
}

resource "azurerm_role_assignment" "acr_pull" {
  scope                = azurerm_container_registry.myacr.id
  role_definition_name = "AcrPull"
  principal_id         = azurerm_kubernetes_cluster.mycluster.identity[0].principal_id
}
