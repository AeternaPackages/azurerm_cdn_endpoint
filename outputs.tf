# --- azurerm_cdn_endpoint ---
output "cdn_endpoints_id" {
  description = "Map of id values across all cdn_endpoints, keyed the same as var.cdn_endpoints"
  value       = module.cdn_endpoints.cdn_endpoints_id
}

output "cdn_endpoints_content_types_to_compress" {
  description = "Map of content_types_to_compress values across all cdn_endpoints, keyed the same as var.cdn_endpoints"
  value       = module.cdn_endpoints.cdn_endpoints_content_types_to_compress
}

output "cdn_endpoints_delivery_rule" {
  description = "Map of delivery_rule values across all cdn_endpoints, keyed the same as var.cdn_endpoints"
  value       = module.cdn_endpoints.cdn_endpoints_delivery_rule
}

output "cdn_endpoints_fqdn" {
  description = "Map of fqdn values across all cdn_endpoints, keyed the same as var.cdn_endpoints"
  value       = module.cdn_endpoints.cdn_endpoints_fqdn
}

output "cdn_endpoints_geo_filter" {
  description = "Map of geo_filter values across all cdn_endpoints, keyed the same as var.cdn_endpoints"
  value       = module.cdn_endpoints.cdn_endpoints_geo_filter
}

output "cdn_endpoints_global_delivery_rule" {
  description = "Map of global_delivery_rule values across all cdn_endpoints, keyed the same as var.cdn_endpoints"
  value       = module.cdn_endpoints.cdn_endpoints_global_delivery_rule
}

output "cdn_endpoints_is_compression_enabled" {
  description = "Map of is_compression_enabled values across all cdn_endpoints, keyed the same as var.cdn_endpoints"
  value       = module.cdn_endpoints.cdn_endpoints_is_compression_enabled
}

output "cdn_endpoints_is_http_allowed" {
  description = "Map of is_http_allowed values across all cdn_endpoints, keyed the same as var.cdn_endpoints"
  value       = module.cdn_endpoints.cdn_endpoints_is_http_allowed
}

output "cdn_endpoints_is_https_allowed" {
  description = "Map of is_https_allowed values across all cdn_endpoints, keyed the same as var.cdn_endpoints"
  value       = module.cdn_endpoints.cdn_endpoints_is_https_allowed
}

output "cdn_endpoints_location" {
  description = "Map of location values across all cdn_endpoints, keyed the same as var.cdn_endpoints"
  value       = module.cdn_endpoints.cdn_endpoints_location
}

output "cdn_endpoints_name" {
  description = "Map of name values across all cdn_endpoints, keyed the same as var.cdn_endpoints"
  value       = module.cdn_endpoints.cdn_endpoints_name
}

output "cdn_endpoints_optimization_type" {
  description = "Map of optimization_type values across all cdn_endpoints, keyed the same as var.cdn_endpoints"
  value       = module.cdn_endpoints.cdn_endpoints_optimization_type
}

output "cdn_endpoints_origin" {
  description = "Map of origin values across all cdn_endpoints, keyed the same as var.cdn_endpoints"
  value       = module.cdn_endpoints.cdn_endpoints_origin
}

output "cdn_endpoints_origin_host_header" {
  description = "Map of origin_host_header values across all cdn_endpoints, keyed the same as var.cdn_endpoints"
  value       = module.cdn_endpoints.cdn_endpoints_origin_host_header
}

output "cdn_endpoints_origin_path" {
  description = "Map of origin_path values across all cdn_endpoints, keyed the same as var.cdn_endpoints"
  value       = module.cdn_endpoints.cdn_endpoints_origin_path
}

output "cdn_endpoints_probe_path" {
  description = "Map of probe_path values across all cdn_endpoints, keyed the same as var.cdn_endpoints"
  value       = module.cdn_endpoints.cdn_endpoints_probe_path
}

output "cdn_endpoints_profile_name" {
  description = "Map of profile_name values across all cdn_endpoints, keyed the same as var.cdn_endpoints"
  value       = module.cdn_endpoints.cdn_endpoints_profile_name
}

output "cdn_endpoints_querystring_caching_behaviour" {
  description = "Map of querystring_caching_behaviour values across all cdn_endpoints, keyed the same as var.cdn_endpoints"
  value       = module.cdn_endpoints.cdn_endpoints_querystring_caching_behaviour
}

output "cdn_endpoints_resource_group_name" {
  description = "Map of resource_group_name values across all cdn_endpoints, keyed the same as var.cdn_endpoints"
  value       = module.cdn_endpoints.cdn_endpoints_resource_group_name
}

output "cdn_endpoints_tags" {
  description = "Map of tags values across all cdn_endpoints, keyed the same as var.cdn_endpoints"
  value       = module.cdn_endpoints.cdn_endpoints_tags
}

# --- azurerm_cdn_endpoint_custom_domain ---
output "cdn_endpoint_custom_domains_id" {
  description = "Map of id values across all cdn_endpoint_custom_domains, keyed the same as var.cdn_endpoint_custom_domains"
  value       = module.cdn_endpoint_custom_domains.cdn_endpoint_custom_domains_id
}

output "cdn_endpoint_custom_domains_cdn_endpoint_id" {
  description = "Map of cdn_endpoint_id values across all cdn_endpoint_custom_domains, keyed the same as var.cdn_endpoint_custom_domains"
  value       = module.cdn_endpoint_custom_domains.cdn_endpoint_custom_domains_cdn_endpoint_id
}

output "cdn_endpoint_custom_domains_cdn_managed_https" {
  description = "Map of cdn_managed_https values across all cdn_endpoint_custom_domains, keyed the same as var.cdn_endpoint_custom_domains"
  value       = module.cdn_endpoint_custom_domains.cdn_endpoint_custom_domains_cdn_managed_https
}

output "cdn_endpoint_custom_domains_host_name" {
  description = "Map of host_name values across all cdn_endpoint_custom_domains, keyed the same as var.cdn_endpoint_custom_domains"
  value       = module.cdn_endpoint_custom_domains.cdn_endpoint_custom_domains_host_name
}

output "cdn_endpoint_custom_domains_name" {
  description = "Map of name values across all cdn_endpoint_custom_domains, keyed the same as var.cdn_endpoint_custom_domains"
  value       = module.cdn_endpoint_custom_domains.cdn_endpoint_custom_domains_name
}

output "cdn_endpoint_custom_domains_user_managed_https" {
  description = "Map of user_managed_https values across all cdn_endpoint_custom_domains, keyed the same as var.cdn_endpoint_custom_domains"
  value       = module.cdn_endpoint_custom_domains.cdn_endpoint_custom_domains_user_managed_https
}


