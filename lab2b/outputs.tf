output "policy_definition_id" {
  value = azurerm_policy_definition.deny_public_ip.id
}

output "policy_set_definition_id" {
  value = azurerm_policy_set_definition.security_initiative.id
}

output "policy_assignment_scope" {
  value = data.azurerm_subscription.current.id
}