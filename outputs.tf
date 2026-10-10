output "amplify_apps_id" {
  description = "Map of id values across all amplify_apps, keyed the same as var.amplify_apps"
  value       = { for k, v in aws_amplify_app.amplify_apps : k => v.id if v.id != null && length(v.id) > 0 }
}
output "amplify_apps_access_token" {
  description = "Map of access_token values across all amplify_apps, keyed the same as var.amplify_apps"
  value       = { for k, v in aws_amplify_app.amplify_apps : k => v.access_token if v.access_token != null && length(v.access_token) > 0 }
  sensitive   = true
}
output "amplify_apps_arn" {
  description = "Map of arn values across all amplify_apps, keyed the same as var.amplify_apps"
  value       = { for k, v in aws_amplify_app.amplify_apps : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "amplify_apps_auto_branch_creation_config" {
  description = "Map of auto_branch_creation_config values across all amplify_apps, keyed the same as var.amplify_apps"
  value       = { for k, v in aws_amplify_app.amplify_apps : k => one(v.auto_branch_creation_config) if v.auto_branch_creation_config != null && length(v.auto_branch_creation_config) > 0 }
  sensitive   = true
}
output "amplify_apps_auto_branch_creation_patterns" {
  description = "Map of auto_branch_creation_patterns values across all amplify_apps, keyed the same as var.amplify_apps"
  value       = { for k, v in aws_amplify_app.amplify_apps : k => v.auto_branch_creation_patterns if v.auto_branch_creation_patterns != null && length(v.auto_branch_creation_patterns) > 0 }
}
output "amplify_apps_basic_auth_credentials" {
  description = "Map of basic_auth_credentials values across all amplify_apps, keyed the same as var.amplify_apps"
  value       = { for k, v in aws_amplify_app.amplify_apps : k => v.basic_auth_credentials if v.basic_auth_credentials != null && length(v.basic_auth_credentials) > 0 }
  sensitive   = true
}
output "amplify_apps_build_spec" {
  description = "Map of build_spec values across all amplify_apps, keyed the same as var.amplify_apps"
  value       = { for k, v in aws_amplify_app.amplify_apps : k => v.build_spec if v.build_spec != null && length(v.build_spec) > 0 }
}
output "amplify_apps_cache_config" {
  description = "Map of cache_config values across all amplify_apps, keyed the same as var.amplify_apps"
  value       = { for k, v in aws_amplify_app.amplify_apps : k => one(v.cache_config) if v.cache_config != null && length(v.cache_config) > 0 }
}
output "amplify_apps_compute_role_arn" {
  description = "Map of compute_role_arn values across all amplify_apps, keyed the same as var.amplify_apps"
  value       = { for k, v in aws_amplify_app.amplify_apps : k => v.compute_role_arn if v.compute_role_arn != null && length(v.compute_role_arn) > 0 }
}
output "amplify_apps_custom_headers" {
  description = "Map of custom_headers values across all amplify_apps, keyed the same as var.amplify_apps"
  value       = { for k, v in aws_amplify_app.amplify_apps : k => v.custom_headers if v.custom_headers != null && length(v.custom_headers) > 0 }
}
output "amplify_apps_custom_rule" {
  description = "Map of custom_rule values across all amplify_apps, keyed the same as var.amplify_apps"
  value       = { for k, v in aws_amplify_app.amplify_apps : k => v.custom_rule if v.custom_rule != null && length(v.custom_rule) > 0 }
}
output "amplify_apps_default_domain" {
  description = "Map of default_domain values across all amplify_apps, keyed the same as var.amplify_apps"
  value       = { for k, v in aws_amplify_app.amplify_apps : k => v.default_domain if v.default_domain != null && length(v.default_domain) > 0 }
}
output "amplify_apps_description" {
  description = "Map of description values across all amplify_apps, keyed the same as var.amplify_apps"
  value       = { for k, v in aws_amplify_app.amplify_apps : k => v.description if v.description != null && length(v.description) > 0 }
}
output "amplify_apps_enable_auto_branch_creation" {
  description = "Map of enable_auto_branch_creation values across all amplify_apps, keyed the same as var.amplify_apps"
  value       = { for k, v in aws_amplify_app.amplify_apps : k => v.enable_auto_branch_creation if v.enable_auto_branch_creation != null }
}
output "amplify_apps_enable_basic_auth" {
  description = "Map of enable_basic_auth values across all amplify_apps, keyed the same as var.amplify_apps"
  value       = { for k, v in aws_amplify_app.amplify_apps : k => v.enable_basic_auth if v.enable_basic_auth != null }
}
output "amplify_apps_enable_branch_auto_build" {
  description = "Map of enable_branch_auto_build values across all amplify_apps, keyed the same as var.amplify_apps"
  value       = { for k, v in aws_amplify_app.amplify_apps : k => v.enable_branch_auto_build if v.enable_branch_auto_build != null }
}
output "amplify_apps_enable_branch_auto_deletion" {
  description = "Map of enable_branch_auto_deletion values across all amplify_apps, keyed the same as var.amplify_apps"
  value       = { for k, v in aws_amplify_app.amplify_apps : k => v.enable_branch_auto_deletion if v.enable_branch_auto_deletion != null }
}
output "amplify_apps_environment_variables" {
  description = "Map of environment_variables values across all amplify_apps, keyed the same as var.amplify_apps"
  value       = { for k, v in aws_amplify_app.amplify_apps : k => v.environment_variables if v.environment_variables != null && length(v.environment_variables) > 0 }
}
output "amplify_apps_iam_service_role_arn" {
  description = "Map of iam_service_role_arn values across all amplify_apps, keyed the same as var.amplify_apps"
  value       = { for k, v in aws_amplify_app.amplify_apps : k => v.iam_service_role_arn if v.iam_service_role_arn != null && length(v.iam_service_role_arn) > 0 }
}
output "amplify_apps_job_config" {
  description = "Map of job_config values across all amplify_apps, keyed the same as var.amplify_apps"
  value       = { for k, v in aws_amplify_app.amplify_apps : k => one(v.job_config) if v.job_config != null && length(v.job_config) > 0 }
}
output "amplify_apps_name" {
  description = "Map of name values across all amplify_apps, keyed the same as var.amplify_apps"
  value       = { for k, v in aws_amplify_app.amplify_apps : k => v.name if v.name != null && length(v.name) > 0 }
}
output "amplify_apps_oauth_token" {
  description = "Map of oauth_token values across all amplify_apps, keyed the same as var.amplify_apps"
  value       = { for k, v in aws_amplify_app.amplify_apps : k => v.oauth_token if v.oauth_token != null && length(v.oauth_token) > 0 }
  sensitive   = true
}
output "amplify_apps_platform" {
  description = "Map of platform values across all amplify_apps, keyed the same as var.amplify_apps"
  value       = { for k, v in aws_amplify_app.amplify_apps : k => v.platform if v.platform != null && length(v.platform) > 0 }
}
output "amplify_apps_production_branch" {
  description = "Map of production_branch values across all amplify_apps, keyed the same as var.amplify_apps"
  value       = { for k, v in aws_amplify_app.amplify_apps : k => v.production_branch if v.production_branch != null && length(v.production_branch) > 0 }
}
output "amplify_apps_region" {
  description = "Map of region values across all amplify_apps, keyed the same as var.amplify_apps"
  value       = { for k, v in aws_amplify_app.amplify_apps : k => v.region if v.region != null && length(v.region) > 0 }
}
output "amplify_apps_repository" {
  description = "Map of repository values across all amplify_apps, keyed the same as var.amplify_apps"
  value       = { for k, v in aws_amplify_app.amplify_apps : k => v.repository if v.repository != null && length(v.repository) > 0 }
}
output "amplify_apps_tags" {
  description = "Map of tags values across all amplify_apps, keyed the same as var.amplify_apps"
  value       = { for k, v in aws_amplify_app.amplify_apps : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "amplify_apps_tags_all" {
  description = "Map of tags_all values across all amplify_apps, keyed the same as var.amplify_apps"
  value       = { for k, v in aws_amplify_app.amplify_apps : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

