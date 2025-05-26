resource "azuread_group" "demo-group" {
  display_name     = "${var.NAMING_PREFIX}-demo-group"
  security_enabled = true
  types            = ["DynamicMembership"]

  dynamic_membership {
    enabled = true
    rule    = "user.department -eq \"Engineering\""
  }
}