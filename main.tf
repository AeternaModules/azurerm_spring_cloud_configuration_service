resource "azurerm_spring_cloud_configuration_service" "spring_cloud_configuration_services" {
  for_each = var.spring_cloud_configuration_services

  name                        = each.value.name
  spring_cloud_service_id     = each.value.spring_cloud_service_id
  generation                  = each.value.generation
  refresh_interval_in_seconds = each.value.refresh_interval_in_seconds

  dynamic "repository" {
    for_each = each.value.repository != null ? [each.value.repository] : []
    content {
      ca_certificate_id        = repository.value.ca_certificate_id
      host_key                 = repository.value.host_key
      host_key_algorithm       = repository.value.host_key_algorithm
      label                    = repository.value.label
      name                     = repository.value.name
      password                 = repository.value.password
      patterns                 = repository.value.patterns
      private_key              = repository.value.private_key
      search_paths             = repository.value.search_paths
      strict_host_key_checking = repository.value.strict_host_key_checking
      uri                      = repository.value.uri
      username                 = repository.value.username
    }
  }
}

