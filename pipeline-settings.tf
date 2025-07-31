resource "azuredevops_project_pipeline_settings" "this" {
  count      = var.pipeline_settings != {} ? 1 : 0
  project_id = azuredevops_project.this.id

  enforce_job_scope                    = var.pipeline_settings.enforce_job_scope
  enforce_referenced_repo_scoped_token = var.pipeline_settings.enforce_referenced_repo_scoped_token
  enforce_settable_var                 = var.pipeline_settings.enforce_settable_var
  publish_pipeline_metadata            = var.pipeline_settings.publish_pipeline_metadata
  status_badges_are_private            = var.pipeline_settings.status_badges_are_private
  enforce_job_scope_for_release        = var.pipeline_settings.enforce_job_scope_for_release

  timeouts {
    create = try(
      local.metadata.resource_timeouts["azuredevops_project_pipeline_settings"]["create"],
      local.metadata.resource_timeouts["default"]["create"]
    )
    read = try(
      local.metadata.resource_timeouts["azuredevops_project_pipeline_settings"]["read"],
      local.metadata.resource_timeouts["default"]["read"]
    )
    update = try(
      local.metadata.resource_timeouts["azuredevops_project_pipeline_settings"]["update"],
      local.metadata.resource_timeouts["default"]["update"]
    )
    delete = try(
      local.metadata.resource_timeouts["azuredevops_project_pipeline_settings"]["delete"],
      local.metadata.resource_timeouts["default"]["delete"]
    )
  }
}
