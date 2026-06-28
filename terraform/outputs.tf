output "aks_attach_acr_command" {
  description = "Run once as an Azure admin to let AKS pull images from ACR"
  value       = module.cardstoreInfra.aks_attach_acr_command
}
