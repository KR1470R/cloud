resource "azurerm_log_analytics_workspace" "law" {
  name                = "az104-law-containerapps"
  location            = azurerm_resource_group.ca_rg.location
  resource_group_name = azurerm_resource_group.ca_rg.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}