resource "azurerm_key_vault" "this" {
  name                        = var.keyvault_name
  location                    = "Canada East"
  resource_group_name         = var.resource_group_name
  tenant_id                   = var.tenant_id
  sku_name                    = "standard"

  public_network_access_enabled = false
  soft_delete_retention_days    = 7
}