data "azuread_client_config" "current" {}

resource "azuread_group" "it_lab_admins" {
  display_name = "IT Lab Administrators"
  description = "Administrators that manage the IT lab"
  security_enabled = true
  mail_enabled = false

  owners = [
    data.azuread_client_config.current.object_id
  ]
}

resource "azuread_group_member" "add_az104_user1" {
  group_object_id = azuread_group.it_lab_admins.object_id
  member_object_id = azuread_user.az104_user1.object_id
}

resource "azuread_group_member" "add_guest_user" {
  group_object_id = azuread_group.it_lab_admins.object_id
  member_object_id = azuread_invitation. external_user.user_id
}
