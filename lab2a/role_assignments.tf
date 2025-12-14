data "azuread_group" "it_lab_admins" {
  display_name = "IT Lab Administrators"
}

resource "azurerm_role_assignment" "it_lab_admins_reader" {
  scope                = data.azurerm_subscription.current.id
  role_definition_name = "Reader"
  principal_id         = data.azuread_group.it_lab_admins.object_id
}

resource "azurerm_role_assignment" "it_lab_admins_rg_contributor" {
  scope                = azurerm_resource_group.rbac_lab_rg.id
  role_definition_name = "Contributor"
  principal_id         = data.azuread_group.it_lab_admins.object_id
}