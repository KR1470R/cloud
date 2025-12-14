output "storage_account_name" {
  value = azurerm_storage_account.storage.name
}

output "blob_container_name" {
  value = azurerm_storage_container.blob_container.name
}

output "file_share_name" {
  value = azurerm_storage_share.file_share.name
}

output "queue_name" {
  value = azurerm_storage_queue.queue.name
}

output "table_name" {
  value = azurerm_storage_table.table.name
}