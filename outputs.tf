output "spring_cloud_configuration_services_id" {
  description = "Map of id values across all spring_cloud_configuration_services, keyed the same as var.spring_cloud_configuration_services"
  value       = { for k, v in azurerm_spring_cloud_configuration_service.spring_cloud_configuration_services : k => v.id if v.id != null && length(v.id) > 0 }
}
output "spring_cloud_configuration_services_generation" {
  description = "Map of generation values across all spring_cloud_configuration_services, keyed the same as var.spring_cloud_configuration_services"
  value       = { for k, v in azurerm_spring_cloud_configuration_service.spring_cloud_configuration_services : k => v.generation if v.generation != null && length(v.generation) > 0 }
}
output "spring_cloud_configuration_services_name" {
  description = "Map of name values across all spring_cloud_configuration_services, keyed the same as var.spring_cloud_configuration_services"
  value       = { for k, v in azurerm_spring_cloud_configuration_service.spring_cloud_configuration_services : k => v.name if v.name != null && length(v.name) > 0 }
}
output "spring_cloud_configuration_services_refresh_interval_in_seconds" {
  description = "Map of refresh_interval_in_seconds values across all spring_cloud_configuration_services, keyed the same as var.spring_cloud_configuration_services"
  value       = { for k, v in azurerm_spring_cloud_configuration_service.spring_cloud_configuration_services : k => v.refresh_interval_in_seconds if v.refresh_interval_in_seconds != null }
}
output "spring_cloud_configuration_services_repository" {
  description = "Map of repository values across all spring_cloud_configuration_services, keyed the same as var.spring_cloud_configuration_services"
  value       = { for k, v in azurerm_spring_cloud_configuration_service.spring_cloud_configuration_services : k => v.repository if v.repository != null && length(v.repository) > 0 }
  sensitive   = true
}
output "spring_cloud_configuration_services_spring_cloud_service_id" {
  description = "Map of spring_cloud_service_id values across all spring_cloud_configuration_services, keyed the same as var.spring_cloud_configuration_services"
  value       = { for k, v in azurerm_spring_cloud_configuration_service.spring_cloud_configuration_services : k => v.spring_cloud_service_id if v.spring_cloud_service_id != null && length(v.spring_cloud_service_id) > 0 }
}

