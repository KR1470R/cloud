resource "azurerm_virtual_network" "vpn_vnet" {
  name                = "az104-vpn-vnet"
  location            = azurerm_resource_group.vpn_rg.location
  resource_group_name = azurerm_resource_group.vpn_rg.name
  address_space       = ["10.10.0.0/16"]
}

resource "azurerm_subnet" "gateway_subnet" {
  name                 = "GatewaySubnet"
  resource_group_name  = azurerm_resource_group.vpn_rg.name
  virtual_network_name = azurerm_virtual_network.vpn_vnet.name
  address_prefixes     = ["10.10.255.0/27"]
}