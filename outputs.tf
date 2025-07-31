output "project" {
  description = "The Azure DevOps project created by this module."
  value       = azuredevops_project.this
}

output "features" {
  description = "The features of the Azure DevOps project managed by this module."
  value       = var.features != {} ? azuredevops_project_features.this[0] : null
}

output "pipeline_settings" {
  description = "The pipeline settings of the Azure DevOps project."
  value       = var.pipeline_settings != {} ? azuredevops_project_pipeline_settings.this[0] : null

}

output "tags" {
  description = "The tags applied to the Azure DevOps project."
  value       = length(var.tags) > 0 ? azuredevops_project_tags.this[0] : null
}