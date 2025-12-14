resource "azurerm_public_ip" "vpn_pip" {
  name                = "az104-vpn-pip"
  location            = azurerm_resource_group.vpn_rg.location
  resource_group_name = azurerm_resource_group.vpn_rg.name

  allocation_method = "Static"
  sku               = "Standard"
}

resource "azurerm_virtual_network_gateway" "vpn_gateway" {
  name                = "az104-vpn-gateway"
  location            = azurerm_resource_group.vpn_rg.location
  resource_group_name = azurerm_resource_group.vpn_rg.name

  type     = "Vpn"
  vpn_type = "RouteBased"
  sku      = "VpnGw1"

  ip_configuration {
    name                          = "vnetGatewayConfig"
    public_ip_address_id          = azurerm_public_ip.vpn_pip.id
    subnet_id                     = azurerm_subnet.gateway_subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}