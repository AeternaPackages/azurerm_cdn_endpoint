locals {
  cdn_endpoints = { for k1, v1 in var.cdn_endpoints : k1 => { content_types_to_compress = v1.content_types_to_compress, delivery_rule = v1.delivery_rule, geo_filter = v1.geo_filter, global_delivery_rule = v1.global_delivery_rule, is_compression_enabled = v1.is_compression_enabled, is_http_allowed = v1.is_http_allowed, is_https_allowed = v1.is_https_allowed, location = v1.location, name = v1.name, optimization_type = v1.optimization_type, origin = v1.origin, origin_host_header = v1.origin_host_header, origin_path = v1.origin_path, probe_path = v1.probe_path, profile_name = v1.profile_name, querystring_caching_behaviour = v1.querystring_caching_behaviour, resource_group_name = v1.resource_group_name, tags = v1.tags } }

  cdn_endpoint_custom_domains = merge([
    for k1, v1 in var.cdn_endpoints : {
      for k2, v2 in coalesce(v1.cdn_endpoint_custom_domains, {}) :
      "${k1}/${k2}" => merge(v2, {
        cdn_endpoint_id = module.cdn_endpoints.cdn_endpoints_id["${k1}"]
      })
    }
  ]...)
}

module "cdn_endpoints" {
  source        = "git::https://github.com/AeternaModules/azurerm_cdn_endpoint.git?ref=v4.80.0"
  cdn_endpoints = local.cdn_endpoints
}

module "cdn_endpoint_custom_domains" {
  source                      = "git::https://github.com/AeternaModules/azurerm_cdn_endpoint_custom_domain.git?ref=v4.80.0"
  cdn_endpoint_custom_domains = local.cdn_endpoint_custom_domains
  depends_on                  = [module.cdn_endpoints]
}

