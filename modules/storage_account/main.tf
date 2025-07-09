resource "azurerm_storage_account" "this" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = "Canada Central"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  allow_blob_public_access = false

  blob_properties {
    delete_retention_policy {
      days = 7
    }
  }
}