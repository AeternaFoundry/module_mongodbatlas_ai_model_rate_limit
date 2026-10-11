variable "ai_model_rate_limits" {
  description = <<EOT
Map of ai_model_rate_limits, attributes below
Required:
    - cloud
    - geography
    - model_group_name
    - project_id
    - requests_per_minute_limit
    - tokens_per_minute_limit
EOT

  type = map(object({
    cloud                     = string
    geography                 = string
    model_group_name          = string
    project_id                = string
    requests_per_minute_limit = number
    tokens_per_minute_limit   = number
  }))
}

