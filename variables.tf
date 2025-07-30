variable "name" {
  description = "Name of the Azure DevOps project."
  type        = string
}

variable "description" {
  description = "Description of the Azure DevOps project."
  type        = string
  default     = ""
}

variable "visibility" {
  description = "Visibility of the Azure DevOps project. Can be 'private' or 'public'."
  type        = string
  default     = "private"
}

variable "version_control" {
  description = "Version control system for the Azure DevOps project. Can be 'Git' or 'TFVC'."
  type        = string
  default     = "Git"
}

variable "work_item_template" {
  description = "Work item template for the Azure DevOps project. Can be 'Agile', 'Scrum', or 'CMMI'."
  type        = string
  default     = "WANTED.solutions CMMI v3"
}

variable "features" {
  description = "Features to enable for the Azure DevOps project. This is a map where keys are feature names and values are their states ('enabled' or 'disabled')."
  type = optional(object({
    testplans    = optional(string, "disabled")
    artifacts    = optional(string, "enabled")
    pipelines    = optional(string, "enabled")
    boards       = optional(string, "enabled")
    repositories = optional(string, "enabled")
  }))
  default = {}
}

variable "tags" {
  description = "List of tags to be applied to the Azure DevOps project."
  type        = list(string)
  default     = []
}

variable "pipeline_settings" {
  description = "Pipeline settings for the Azure DevOps project."
  type = object({
    enforce_job_scope                    = optional(bool, false)
    enforce_referenced_repo_scoped_token = optional(bool, false)
    enforce_settable_var                 = optional(bool, false)
    publish_pipeline_metadata            = optional(bool, false)
    status_badges_are_private            = optional(bool, true)
    enforce_job_scope_for_release        = optional(bool, false)
  })
  default = {}
}