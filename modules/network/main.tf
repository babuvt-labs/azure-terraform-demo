resource "azurerm_resource_group" "rg" {
  name     = "${var.app_name}-${var.environment}-rg"
  location = var.location
  tags     = {}
}

resource "azurerm_virtual_network" "vnet" {
  name                = "${var.app_name}-${var.environment}-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
}