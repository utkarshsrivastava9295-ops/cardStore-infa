output "aks_attach_acr_command" {
  description = "Run once as an Azure admin if assign_acr_pull_role is false"
  value       = "az aks update --resource-group ${azurerm_resource_group.myrg.name} --name ${azurerm_kubernetes_cluster.mycluster.name} --attach-acr ${azurerm_container_registry.myacr.name}"
}

output "kubelet_identity_object_id" {
  description = "Kubelet identity to grant AcrPull if assigning the role manually"
  value       = azurerm_kubernetes_cluster.mycluster.kubelet_identity[0].object_id
}

output "acr_name" {
  value = azurerm_container_registry.myacr.name
}

output "aks_name" {
  value = azurerm_kubernetes_cluster.mycluster.name
}

output "resource_group_name" {
  value = azurerm_resource_group.myrg.name
}
