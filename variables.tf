variable "amplify_apps" {
  description = <<EOT
Map of amplify_apps, attributes below
Required:
    - name
Optional:
    - access_token
    - auto_branch_creation_patterns
    - basic_auth_credentials
    - build_spec
    - compute_role_arn
    - custom_headers
    - description
    - enable_auto_branch_creation
    - enable_basic_auth
    - enable_branch_auto_build
    - enable_branch_auto_deletion
    - environment_variables
    - iam_service_role_arn
    - oauth_token
    - platform
    - region
    - repository
    - tags
    - tags_all
    - auto_branch_creation_config (block):
        - basic_auth_credentials (optional)
        - build_spec (optional)
        - enable_auto_build (optional)
        - enable_basic_auth (optional)
        - enable_performance_mode (optional)
        - enable_pull_request_preview (optional)
        - environment_variables (optional)
        - framework (optional)
        - pull_request_environment_name (optional)
        - stage (optional)
    - cache_config (block):
        - type (required)
    - custom_rule (block):
        - condition (optional)
        - source (required)
        - status (optional)
        - target (required)
    - job_config (block):
        - build_compute_type (optional)
EOT

  type = map(object({
    name                          = string
    repository                    = optional(string)
    region                        = optional(string)
    platform                      = optional(string)
    oauth_token                   = optional(string)
    iam_service_role_arn          = optional(string)
    environment_variables         = optional(map(string))
    enable_branch_auto_deletion   = optional(bool)
    enable_branch_auto_build      = optional(bool)
    enable_basic_auth             = optional(bool)
    enable_auto_branch_creation   = optional(bool)
    description                   = optional(string)
    custom_headers                = optional(string)
    compute_role_arn              = optional(string)
    build_spec                    = optional(string)
    basic_auth_credentials        = optional(string)
    auto_branch_creation_patterns = optional(set(string))
    access_token                  = optional(string)
    tags                          = optional(map(string))
    tags_all                      = optional(map(string))
    auto_branch_creation_config = optional(object({
      basic_auth_credentials        = optional(string)
      build_spec                    = optional(string)
      enable_auto_build             = optional(bool)
      enable_basic_auth             = optional(bool)
      enable_performance_mode       = optional(bool)
      enable_pull_request_preview   = optional(bool)
      environment_variables         = optional(map(string))
      framework                     = optional(string)
      pull_request_environment_name = optional(string)
      stage                         = optional(string)
    }))
    cache_config = optional(object({
      type = string
    }))
    custom_rule = optional(list(object({
      condition = optional(string)
      source    = string
      status    = optional(string)
      target    = string
    })))
    job_config = optional(object({
      build_compute_type = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.amplify_apps : (
        v.access_token == null || (length(v.access_token) >= 1 && length(v.access_token) <= 255)
      )
    ])
    error_message = "must be between 1 and 255 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.amplify_apps : (
        v.auto_branch_creation_config == null || (v.auto_branch_creation_config.basic_auth_credentials == null || (length(v.auto_branch_creation_config.basic_auth_credentials) >= 1 && length(v.auto_branch_creation_config.basic_auth_credentials) <= 2000))
      )
    ])
    error_message = "must be between 1 and 2000 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.amplify_apps : (
        v.auto_branch_creation_config == null || (v.auto_branch_creation_config.build_spec == null || (length(v.auto_branch_creation_config.build_spec) >= 1 && length(v.auto_branch_creation_config.build_spec) <= 25000))
      )
    ])
    error_message = "must be between 1 and 25000 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.amplify_apps : (
        v.auto_branch_creation_config == null || (v.auto_branch_creation_config.framework == null || (length(v.auto_branch_creation_config.framework) >= 1 && length(v.auto_branch_creation_config.framework) <= 255))
      )
    ])
    error_message = "must be between 1 and 255 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.amplify_apps : (
        v.auto_branch_creation_config == null || (v.auto_branch_creation_config.pull_request_environment_name == null || (length(v.auto_branch_creation_config.pull_request_environment_name) >= 1 && length(v.auto_branch_creation_config.pull_request_environment_name) <= 255))
      )
    ])
    error_message = "must be between 1 and 255 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.amplify_apps : (
        v.basic_auth_credentials == null || (length(v.basic_auth_credentials) >= 1 && length(v.basic_auth_credentials) <= 2000)
      )
    ])
    error_message = "must be between 1 and 2000 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.amplify_apps : (
        v.build_spec == null || (length(v.build_spec) >= 1 && length(v.build_spec) <= 25000)
      )
    ])
    error_message = "must be between 1 and 25000 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.amplify_apps : (
        v.custom_headers == null || (length(v.custom_headers) >= 1 && length(v.custom_headers) <= 25000)
      )
    ])
    error_message = "must be between 1 and 25000 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.amplify_apps : (
        v.oauth_token == null || (length(v.oauth_token) >= 1 && length(v.oauth_token) <= 1000)
      )
    ])
    error_message = "must be between 1 and 1000 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.amplify_apps : (
        v.repository == null || (length(v.repository) >= 1 && length(v.repository) <= 1000)
      )
    ])
    error_message = "must be between 1 and 1000 characters"
  }
  # Note: 12 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

