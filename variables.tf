variable "apps_lookup" {
  description = <<EOT
Map of apps_lookup, attributes below
Optional:
    - provider_config
EOT

  type = map(object({
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

