output "spring_cloud_configuration_services" {
  description = "All spring_cloud_configuration_service resources"
  value       = azurerm_spring_cloud_configuration_service.spring_cloud_configuration_services
  sensitive   = true
}
output "spring_cloud_configuration_services_generation" {
  description = "List of generation values across all spring_cloud_configuration_services"
  value       = [for k, v in azurerm_spring_cloud_configuration_service.spring_cloud_configuration_services : v.generation]
}
output "spring_cloud_configuration_services_name" {
  description = "List of name values across all spring_cloud_configuration_services"
  value       = [for k, v in azurerm_spring_cloud_configuration_service.spring_cloud_configuration_services : v.name]
}
output "spring_cloud_configuration_services_refresh_interval_in_seconds" {
  description = "List of refresh_interval_in_seconds values across all spring_cloud_configuration_services"
  value       = [for k, v in azurerm_spring_cloud_configuration_service.spring_cloud_configuration_services : v.refresh_interval_in_seconds]
}
output "spring_cloud_configuration_services_repository" {
  description = "List of repository values across all spring_cloud_configuration_services"
  value       = [for k, v in azurerm_spring_cloud_configuration_service.spring_cloud_configuration_services : v.repository]
  sensitive   = true
}
output "spring_cloud_configuration_services_spring_cloud_service_id" {
  description = "List of spring_cloud_service_id values across all spring_cloud_configuration_services"
  value       = [for k, v in azurerm_spring_cloud_configuration_service.spring_cloud_configuration_services : v.spring_cloud_service_id]
}

