resource "azurerm_container_app_environment" "env" {
  name                       = "az104-containerapps-env"
  location                   = azurerm_resource_group.ca_rg.location
  resource_group_name        = azurerm_resource_group.ca_rg.name
  log_analytics_workspace_id = azurerm_log_analytics_workspace.law.id
}