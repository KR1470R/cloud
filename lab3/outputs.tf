output "resource_group_name" {
  value = azurerm_resource_group.arm_lab_rg.name
}

output "storage_account_name" {
  value = azurerm_storage_account.armstorage.name
}

output "storage_container_name" {
  value = azurerm_storage_container.armcontainer.name
}