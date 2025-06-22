resource "azuread_group" "demo-group" {
  display_name     = "${var.NAMING_PREFIX}-demo-group"
  security_enabled = true
  types            = ["DynamicMembership"]

  dynamic_membership {
    enabled        = true
    rule           = "user.department -eq \"Engineering\""
  }
}

output "demo-group_id" {
  description = "The Entra group ID for demo-group"
  value       = azuread_group.demo-group.id
}