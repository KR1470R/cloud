resource "azurerm_storage_account" "armstorage" {
  name                     = "az104armstorage01"
  resource_group_name      = azurerm_resource_group.arm_lab_rg.name
  location                 = azurerm_resource_group.arm_lab_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "armcontainer" {
  name                  = "arm-template-container"
  storage_account_name  = azurerm_storage_account.armstorage.name
  container_access_type = "private"
}