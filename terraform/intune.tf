resource "microsoft365wp_device_compliance_policy" "android_compliance" {
  display_name = "Android Compliance Policy"
  description  = <<EOT
Compliance policy for Android devices.
${jsonencode(local.tags)}
EOT
  scheduled_actions_for_rule = [{ scheduled_action_configurations = [{
    grace_period_hours = 0
  }] }]
  android_work_profile = {
    min_android_security_patch_level  = "2025-05-01"
    security_block_jailbroken_devices = true
  }
}