variable "cdn_endpoints" {
  description = <<EOT
Map of cdn_endpoints, attributes below
Required:
    - location
    - name
    - profile_name
    - resource_group_name
    - origin (block)
Optional:
    - content_types_to_compress
    - is_compression_enabled
    - is_http_allowed
    - is_https_allowed
    - optimization_type
    - origin_host_header
    - origin_path
    - probe_path
    - querystring_caching_behaviour
    - tags
    - delivery_rule (block)
    - geo_filter (block)
    - global_delivery_rule (block)
Nested cdn_endpoint_custom_domains (azurerm_cdn_endpoint_custom_domain):
    Required:
        - host_name
        - name
    Optional:
        - cdn_managed_https (block)
        - user_managed_https (block)
EOT

  type = map(object({
    location                      = string
    name                          = string
    profile_name                  = string
    resource_group_name           = string
    content_types_to_compress     = optional(set(string))
    is_compression_enabled        = optional(bool)
    is_http_allowed               = optional(bool)
    is_https_allowed              = optional(bool)
    optimization_type             = optional(string)
    origin_host_header            = optional(string)
    origin_path                   = optional(string)
    probe_path                    = optional(string)
    querystring_caching_behaviour = optional(string)
    tags                          = optional(map(string))
    origin = list(object({
      host_name  = string
      http_port  = optional(number)
      https_port = optional(number)
      name       = string
    }))
    delivery_rule = optional(list(object({
      cache_expiration_action = optional(object({
        behavior = string
        duration = optional(string)
      }))
      cache_key_query_string_action = optional(object({
        behavior   = string
        parameters = optional(string)
      }))
      cookies_condition = optional(list(object({
        match_values     = optional(set(string))
        negate_condition = optional(bool)
        operator         = string
        selector         = string
        transforms       = optional(list(string))
      })))
      device_condition = optional(object({
        match_values     = set(string)
        negate_condition = optional(bool)
        operator         = optional(string)
      }))
      http_version_condition = optional(list(object({
        match_values     = set(string)
        negate_condition = optional(bool)
        operator         = optional(string)
      })))
      modify_request_header_action = optional(list(object({
        action = string
        name   = string
        value  = optional(string)
      })))
      modify_response_header_action = optional(list(object({
        action = string
        name   = string
        value  = optional(string)
      })))
      name  = string
      order = number
      post_arg_condition = optional(list(object({
        match_values     = optional(set(string))
        negate_condition = optional(bool)
        operator         = string
        selector         = string
        transforms       = optional(list(string))
      })))
      query_string_condition = optional(list(object({
        match_values     = optional(set(string))
        negate_condition = optional(bool)
        operator         = string
        transforms       = optional(list(string))
      })))
      remote_address_condition = optional(list(object({
        match_values     = optional(set(string))
        negate_condition = optional(bool)
        operator         = string
      })))
      request_body_condition = optional(list(object({
        match_values     = optional(set(string))
        negate_condition = optional(bool)
        operator         = string
        transforms       = optional(list(string))
      })))
      request_header_condition = optional(list(object({
        match_values     = optional(set(string))
        negate_condition = optional(bool)
        operator         = string
        selector         = string
        transforms       = optional(list(string))
      })))
      request_method_condition = optional(object({
        match_values     = set(string)
        negate_condition = optional(bool)
        operator         = optional(string)
      }))
      request_scheme_condition = optional(object({
        match_values     = set(string)
        negate_condition = optional(bool)
        operator         = optional(string)
      }))
      request_uri_condition = optional(list(object({
        match_values     = optional(set(string))
        negate_condition = optional(bool)
        operator         = string
        transforms       = optional(list(string))
      })))
      url_file_extension_condition = optional(list(object({
        match_values     = optional(set(string))
        negate_condition = optional(bool)
        operator         = string
        transforms       = optional(list(string))
      })))
      url_file_name_condition = optional(list(object({
        match_values     = optional(set(string))
        negate_condition = optional(bool)
        operator         = string
        transforms       = optional(list(string))
      })))
      url_path_condition = optional(list(object({
        match_values     = optional(set(string))
        negate_condition = optional(bool)
        operator         = string
        transforms       = optional(list(string))
      })))
      url_redirect_action = optional(object({
        fragment      = optional(string)
        hostname      = optional(string)
        path          = optional(string)
        protocol      = optional(string)
        query_string  = optional(string)
        redirect_type = string
      }))
      url_rewrite_action = optional(object({
        destination             = string
        preserve_unmatched_path = optional(bool)
        source_pattern          = string
      }))
    })))
    geo_filter = optional(list(object({
      action        = string
      country_codes = list(string)
      relative_path = string
    })))
    global_delivery_rule = optional(object({
      cache_expiration_action = optional(object({
        behavior = string
        duration = optional(string)
      }))
      cache_key_query_string_action = optional(object({
        behavior   = string
        parameters = optional(string)
      }))
      modify_request_header_action = optional(list(object({
        action = string
        name   = string
        value  = optional(string)
      })))
      modify_response_header_action = optional(list(object({
        action = string
        name   = string
        value  = optional(string)
      })))
      url_redirect_action = optional(object({
        fragment      = optional(string)
        hostname      = optional(string)
        path          = optional(string)
        protocol      = optional(string)
        query_string  = optional(string)
        redirect_type = string
      }))
      url_rewrite_action = optional(object({
        destination             = string
        preserve_unmatched_path = optional(bool)
        source_pattern          = string
      }))
    }))
    cdn_endpoint_custom_domains = optional(map(object({
      host_name = string
      name      = string
      cdn_managed_https = optional(object({
        certificate_type = string
        protocol_type    = string
        tls_version      = optional(string)
      }))
      user_managed_https = optional(object({
        key_vault_secret_id = string
        tls_version         = optional(string)
      }))
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.cdn_endpoints) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.cdn_endpoints : [for kk in keys(coalesce(v0.cdn_endpoint_custom_domains, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
