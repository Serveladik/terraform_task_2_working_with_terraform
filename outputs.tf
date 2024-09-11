output "primarykey" {
  value     = azurerm_storage_account.mate-terraform-sa.primary_access_key
  sensitive = true
}

output "host" {
  value     = azurerm_storage_account.mate-terraform-sa.primary_blob_host
  sensitive = true
}
