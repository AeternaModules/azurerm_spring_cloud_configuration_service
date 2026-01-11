variable "spring_cloud_configuration_services" {
  description = <<EOT
Map of spring_cloud_configuration_services, attributes below
Required:
    - name
    - spring_cloud_service_id
Optional:
    - generation
    - refresh_interval_in_seconds
    - repository (block):
        - ca_certificate_id (optional)
        - host_key (optional)
        - host_key_algorithm (optional)
        - label (required)
        - name (required)
        - password (optional)
        - patterns (required)
        - private_key (optional)
        - search_paths (optional)
        - strict_host_key_checking (optional)
        - uri (required)
        - username (optional)
EOT

  type = map(object({
    name                        = string
    spring_cloud_service_id     = string
    generation                  = optional(string)
    refresh_interval_in_seconds = optional(number)
    repository = optional(object({
      ca_certificate_id        = optional(string)
      host_key                 = optional(string)
      host_key_algorithm       = optional(string)
      label                    = string
      name                     = string
      password                 = optional(string)
      patterns                 = set(string)
      private_key              = optional(string)
      search_paths             = optional(set(string))
      strict_host_key_checking = optional(bool)
      uri                      = string
      username                 = optional(string)
    }))
  }))
}

