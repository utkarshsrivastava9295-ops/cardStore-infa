resource "azurerm_resource_group" "myrg" {
  name = var.resource_group
  location = var.location
}