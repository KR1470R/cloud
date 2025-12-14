output "vnet1_name" {
  value = azurerm_virtual_network.vnet1.name
}

output "vnet2_name" {
  value = azurerm_virtual_network.vnet2.name
}

output "nsg_name" {
  value = azurerm_network_security_group.nsg.name
}