
resource "azurerm_storage_account" "storage_account" {
  location                 = var.location
  name                     = var.account_name
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  resource_group_name      = var.resource_group_name
}

resource "azurerm_storage_container" "storage_container" {
  storage_account_name = azurerm_storage_account.storage_account.name
  name                 = var.container_name
}