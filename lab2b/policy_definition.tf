resource "azurerm_policy_definition" "deny_public_ip" {
  name         = "deny-public-ip"
  policy_type  = "Custom"
  mode         = "All"
  display_name = "Deny creation of Public IPs"
  description  = "Denies creation of Public IP addresses"

  policy_rule = jsonencode({
    if = {
      field  = "type"
      equals = "Microsoft.Network/publicIPAddresses"
    }
    then = {
      effect = "Deny"
    }
  })
}

resource "azurerm_policy_set_definition" "security_initiative" {
  name         = "security-controls-initiative"
  display_name = "Security Controls Initiative"
  policy_type  = "Custom"
  description  = "Initiative for governance controls"

  policy_definition_reference {
    policy_definition_id = azurerm_policy_definition.deny_public_ip.id
    reference_id         = "denyPublicIP"
  }
}