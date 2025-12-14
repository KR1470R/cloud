resource "azurerm_local_network_gateway" "onprem" {
  name                = "az104-onprem-gateway"
  location            = azurerm_resource_group.vpn_rg.location
  resource_group_name = azurerm_resource_group.vpn_rg.name

  gateway_address = "203.0.113.1"
  address_space   = ["192.168.1.0/24"]
}

resource "azurerm_virtual_network_gateway_connection" "s2s_connection" {
  name                = "az104-s2s-connection"
  location            = azurerm_resource_group.vpn_rg.location
  resource_group_name = azurerm_resource_group.vpn_rg.name

  type                       = "IPsec"
  virtual_network_gateway_id = azurerm_virtual_network_gateway.vpn_gateway.id
  local_network_gateway_id   = azurerm_local_network_gateway.onprem.id

  shared_key = "Azure104SharedKey!"
}