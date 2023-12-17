# uses "hashicorp/azurerm"

resource "azurerm_log_analytics_workspace" "this" {
  name                = var.name
  resource_group_name = var.rg_name
  location            = var.location
  sku                 = "PerGB2018"
  retention_in_days   = var.log_retention

  tags                = var.tags
}
