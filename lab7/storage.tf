resource "azurerm_storage_account" "storage" {
  name                     = "az104storagelabvartus01"
  resource_group_name      = azurerm_resource_group.storage_rg.name
  location                 = azurerm_resource_group.storage_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "blob_container" {
  name                  = "blob-container"
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "private"
}

resource "azurerm_storage_share" "file_share" {
  name                 = "fileshare"
  storage_account_name = azurerm_storage_account.storage.name
  quota                = 50
}

resource "azurerm_storage_queue" "queue" {
  name                 = "storage-queue"
  storage_account_name = azurerm_storage_account.storage.name
}

resource "azurerm_storage_table" "table" {
  name                 = "storagetable"
  storage_account_name = azurerm_storage_account.storage.name
}