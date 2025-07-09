provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = "Canada East"
}

module "keyvault" {
  source              = "./modules/keyvault"
  keyvault_name       = var.keyvault_name
  resource_group_name = azurerm_resource_group.this.name
  tenant_id           = var.tenant_id
}