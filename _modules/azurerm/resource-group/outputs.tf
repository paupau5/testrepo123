output "resource_group_id" {
  description = "resource group id"
  value       = azurerm_resource_group.this.id
}

output "resource_group_name" {
  description = "resource group name"
  value       = azurerm_resource_group.this.name
}
