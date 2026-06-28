resource "azurerm_virtual_network" "myvnet" {
  name = var.vnet_name
  location = var.location
  resource_group_name = azurerm_resource_group.myrg.name
  address_space = var.address_space
}

resource "azurerm_subnet" "mysubnet" {
  for_each = var.subnets
  
  name = each.key
  virtual_network_name = azurerm_virtual_network.myvnet.name
  resource_group_name = azurerm_resource_group.myrg.name
  address_prefixes = [each.value.address_prefix]
}

# resource "azurerm_nat_gateway" "mynatgateway" {
#     name = var.natgateway_name
#     resource_group_name = azurerm_resource_group.myrg.name

# }