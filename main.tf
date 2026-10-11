resource "mongodbatlas_ai_model_rate_limit" "ai_model_rate_limits" {
  for_each = var.ai_model_rate_limits

  cloud                     = each.value.cloud
  geography                 = each.value.geography
  model_group_name          = each.value.model_group_name
  project_id                = each.value.project_id
  requests_per_minute_limit = each.value.requests_per_minute_limit
  tokens_per_minute_limit   = each.value.tokens_per_minute_limit
}

