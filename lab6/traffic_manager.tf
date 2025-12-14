resource "azurerm_traffic_manager_profile" "tm_profile" {
  name                   = "az104-tm-profile"
  resource_group_name    = azurerm_resource_group.tm_rg.name
  traffic_routing_method = "Priority"

  dns_config {
    relative_name = "az104tmprofile"
    ttl           = 30
  }

  monitor_config {
    protocol = "HTTP"
    port     = 80
    path     = "/"
  }
}

resource "azurerm_traffic_manager_external_endpoint" "endpoint_primary" {
  name       = "primary-endpoint"
  profile_id = azurerm_traffic_manager_profile.tm_profile.id
  priority   = 1
  target     = "1.1.1.1"
}

resource "azurerm_traffic_manager_external_endpoint" "endpoint_secondary" {
  name       = "secondary-endpoint"
  profile_id = azurerm_traffic_manager_profile.tm_profile.id
  priority   = 2
  target     = "8.8.8.8"
}
