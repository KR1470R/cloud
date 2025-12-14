data "azurerm_subscription" "current" {
  subscription_id = var.subscription_id
}

resource "azurerm_resource_group" "rbac_lab_rg" {
  name     = "rg-az104-rbac-lab"
  location = var.location
}
