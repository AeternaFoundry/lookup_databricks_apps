data "databricks_apps" "apps_lookup" {
  for_each = var.apps_lookup

  provider_config = each.value.provider_config
}

