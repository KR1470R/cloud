resource "azurerm_container_group" "aci" {
  name                = "az104-aci"
  location            = azurerm_resource_group.aci_rg.location
  resource_group_name = azurerm_resource_group.aci_rg.name
  os_type             = "Linux"

  dns_name_label = "az104-aci-vartus-01"
  ip_address_type = "Public"

  container {
    name   = "nginx"
    image = "mcr.microsoft.com/azuredocs/aci-helloworld"
    cpu    = "0.5"
    memory = "1.0"

    ports {
      port     = 80
      protocol = "TCP"
    }
  }
}