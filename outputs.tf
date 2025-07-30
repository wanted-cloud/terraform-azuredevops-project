output "project" {
  description = "The Azure DevOps project created by this module."
  value       = azuredevops_project.this
}

output "features" {
  description = "The features of the Azure DevOps project managed by this module."
  value       = azuredevops_project_features.this
}

output "tags" {
  description = "The tags applied to the Azure DevOps project."
  value       = azuredevops_project_tags.this
}