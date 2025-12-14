resource "random_password" "az104_user1_password" {
  length = 16
  special = true
}
resource "azuread_user" "az104_user1" {
  user_principal_name = "az104-user1@vartus2gmail.onmicrosoft.com"
  display_name = "az104-user1"
  password = random_password.az104_user1_password.result
  force_password_change = true
  account_enabled = true

  job_title = "IT Administrator"
  department = "IT"
  usage_location = "US"
}
resource "azuread_invitation" "external_user" {
  user_email_address = "vartus2@gmail.com"
  user_display_name = "Viktor Artus Guest"
  redirect_url = "https://portal.azure.com"
  message {
    body = "Welcome to azure!"
  }
}
