resource "azurerm_storage_account" "this" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = "Canada East"
  account_tier             = "Standard"
  account_replication_type = "RAGRS"

  allow_blob_public_access = true

  tags = {
    Name = var.name_tag
    Env  = var.env
  }
}