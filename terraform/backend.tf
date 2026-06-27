terraform {
  backend "azurerm" {
    resource_group_name = "terraform-rg"
    storage_account_name = "utkarshterraformms"
    container_name = "terraformstate"
    # key = "${var.environment}/terraform.tfstate"
  }
}