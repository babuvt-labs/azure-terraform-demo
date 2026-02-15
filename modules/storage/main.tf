resource "azurerm_storage_account" "storage" {
  name                     = "${var.app_name}${var.environment}storage"
  resource_group_name      = "${var.app_name}-${var.environment}-rg"
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  public_network_access_enabled = true
}