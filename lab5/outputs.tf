output "vpn_gateway_name" {
  value = azurerm_virtual_network_gateway.vpn_gateway.name
}

output "vpn_public_ip" {
  value = azurerm_public_ip.vpn_pip.ip_address
}

output "vpn_connection_name" {
  value = azurerm_virtual_network_gateway_connection.s2s_connection.name
}