resource "aws_amplify_app" "amplify_apps" {
  for_each = var.amplify_apps

  name                          = each.value.name
  repository                    = each.value.repository
  region                        = each.value.region
  platform                      = each.value.platform
  oauth_token                   = each.value.oauth_token
  iam_service_role_arn          = each.value.iam_service_role_arn
  environment_variables         = each.value.environment_variables
  enable_branch_auto_deletion   = each.value.enable_branch_auto_deletion
  enable_branch_auto_build      = each.value.enable_branch_auto_build
  enable_basic_auth             = each.value.enable_basic_auth
  enable_auto_branch_creation   = each.value.enable_auto_branch_creation
  description                   = each.value.description
  custom_headers                = each.value.custom_headers
  compute_role_arn              = each.value.compute_role_arn
  build_spec                    = each.value.build_spec
  basic_auth_credentials        = each.value.basic_auth_credentials
  auto_branch_creation_patterns = each.value.auto_branch_creation_patterns
  access_token                  = each.value.access_token
  tags                          = each.value.tags
  tags_all                      = each.value.tags_all

  dynamic "auto_branch_creation_config" {
    for_each = each.value.auto_branch_creation_config != null ? [each.value.auto_branch_creation_config] : []
    content {
      basic_auth_credentials        = auto_branch_creation_config.value.basic_auth_credentials
      build_spec                    = auto_branch_creation_config.value.build_spec
      enable_auto_build             = auto_branch_creation_config.value.enable_auto_build
      enable_basic_auth             = auto_branch_creation_config.value.enable_basic_auth
      enable_performance_mode       = auto_branch_creation_config.value.enable_performance_mode
      enable_pull_request_preview   = auto_branch_creation_config.value.enable_pull_request_preview
      environment_variables         = auto_branch_creation_config.value.environment_variables
      framework                     = auto_branch_creation_config.value.framework
      pull_request_environment_name = auto_branch_creation_config.value.pull_request_environment_name
      stage                         = auto_branch_creation_config.value.stage
    }
  }

  dynamic "cache_config" {
    for_each = each.value.cache_config != null ? [each.value.cache_config] : []
    content {
      type = cache_config.value.type
    }
  }

  dynamic "custom_rule" {
    for_each = each.value.custom_rule != null ? each.value.custom_rule : []
    content {
      condition = custom_rule.value.condition
      source    = custom_rule.value.source
      status    = custom_rule.value.status
      target    = custom_rule.value.target
    }
  }

  dynamic "job_config" {
    for_each = each.value.job_config != null ? [each.value.job_config] : []
    content {
      build_compute_type = job_config.value.build_compute_type
    }
  }
}

