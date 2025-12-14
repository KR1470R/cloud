resource "azapi_resource" "allow_public_ip_for_vpn" {
  type      = "Microsoft.Authorization/policyExemptions@2022-07-01-preview"
  name      = "allow-public-ip-for-vpn"
  parent_id = "/subscriptions/14e7e7e4-177b-4446-9acb-ce63ab09c3e0/resourceGroups/rg-az104-intersite"

  body = jsonencode({
    properties = {
      displayName = "Allow Public IP for VPN Lab"
      exemptionCategory = "Waiver"
      policyAssignmentId = "/subscriptions/14e7e7e4-177b-4446-9acb-ce63ab09c3e0/providers/Microsoft.Authorization/policyAssignments/deny-public-ip-assignment"
    }
  })
}

resource "azapi_resource" "allow_public_ip_for_vpn_initiative" {
  type      = "Microsoft.Authorization/policyExemptions@2022-07-01-preview"
  name      = "allow-public-ip-for-vpn-initiative"
  parent_id = "/subscriptions/14e7e7e4-177b-4446-9acb-ce63ab09c3e0/resourceGroups/rg-az104-intersite"

  body = jsonencode({
    properties = {
      displayName = "Allow Public IP for VPN (Initiative)"
      exemptionCategory = "Waiver"
      policyAssignmentId = "/subscriptions/14e7e7e4-177b-4446-9acb-ce63ab09c3e0/providers/Microsoft.Authorization/policyAssignments/security-initiative-assignment"
    }
  })
}