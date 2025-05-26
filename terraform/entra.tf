resource "azuread_group" "demo-group" {
  display_name     = "DevOps Demo"
  security_enabled = true
  types            = ["DynamicMembership"]

  dynamic_membership {
    enabled = true
    rule    = "user.department -eq \"Engineering\""
  }
}