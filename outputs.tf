output "apps_lookup_app" {
  description = "Map of app values across all apps_lookup, keyed the same as var.apps_lookup except keys with no app are omitted"
  value       = { for k, v in data.databricks_apps.apps_lookup : k => v.app if v.app != null && length(v.app) > 0 }
}
output "apps_lookup_provider_config" {
  description = "Map of provider_config values across all apps_lookup, keyed the same as var.apps_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_apps.apps_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}

