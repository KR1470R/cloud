resource "azurerm_service_plan" "plan" {
  name                = "az104-service-plan"
  resource_group_name = azurerm_resource_group.web_rg.name
  location            = azurerm_resource_group.web_rg.location

  os_type  = "Linux"
  sku_name = "S1"
}

resource "azurerm_linux_web_app" "webapp" {
  name                = "az104-webapp-vartus"
  resource_group_name = azurerm_resource_group.web_rg.name
  location            = azurerm_resource_group.web_rg.location
  service_plan_id     = azurerm_service_plan.plan.id

  site_config {
    application_stack {
      node_version = "18-lts"
    }
  }
}

resource "azurerm_linux_web_app_slot" "staging" {
  name           = "staging"
  app_service_id = azurerm_linux_web_app.webapp.id

  site_config {
    application_stack {
      node_version = "18-lts"
    }
  }
}