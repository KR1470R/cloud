output "subscription_name" {
  value = data.azurerm_subscription.current.display_name
}

output "resource_group_name" {
  value = azurerm_resource_group.rbac_lab_rg.name
}

output "rbac_group" {
  value = data.azuread_group.it_lab_admins.display_name
}