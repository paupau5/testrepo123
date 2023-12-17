output "log_analytics_id" {
  description = "log analytics workspace id"
  value       = azurerm_log_analytics_workspace.this.id
}
