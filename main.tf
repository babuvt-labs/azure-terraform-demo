module "network" {
  source      = "./modules/network"
  location    = var.location
  environment = var.environment
  app_name    = var.app_name
}

module "storage" {
  source      = "./modules/storage"
  location    = var.location
  environment = var.environment
  app_name    = var.app_name
}

resource "azurerm_role_assignment" "owner_assignment" {
  scope                = "/subscriptions/00000000-0000-0000-0000-000000000000"
  role_definition_name = "Owner"
  principal_id         = "11111111-1111-1111-1111-111111111111"
}