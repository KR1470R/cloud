resource "azapi_resource" "deny_public_ip_assignment" {
  type      = "Microsoft.Authorization/policyAssignments@2022-06-01"
  name      = "deny-public-ip-assignment"
  parent_id = data.azurerm_subscription.current.id

  body = jsonencode({
    properties = {
      displayName = "Deny Public IP Assignment"
      policyDefinitionId = azurerm_policy_definition.deny_public_ip.id
    }
  })
}

resource "azapi_resource" "security_initiative_assignment" {
  type      = "Microsoft.Authorization/policyAssignments@2022-06-01"
  name      = "security-initiative-assignment"
  parent_id = data.azurerm_subscription.current.id

  body = jsonencode({
    properties = {
      displayName = "Security Initiative Assignment"
      policyDefinitionId = azurerm_policy_set_definition.security_initiative.id
    }
  })
}