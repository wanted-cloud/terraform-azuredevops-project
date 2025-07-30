resource "azuredevops_project_features" "this" {
  project_id = azuredevops_project.this.id
  features   = var.features

  timeouts {
    create = try(
      local.metadata.resource_timeouts["azuredevops_project_features"]["create"],
      local.metadata.resource_timeouts["default"]["create"]
    )
    read = try(
      local.metadata.resource_timeouts["azuredevops_project_features"]["read"],
      local.metadata.resource_timeouts["default"]["read"]
    )
    update = try(
      local.metadata.resource_timeouts["azuredevops_project_features"]["update"],
      local.metadata.resource_timeouts["default"]["update"]
    )
    delete = try(
      local.metadata.resource_timeouts["azuredevops_project_features"]["delete"],
      local.metadata.resource_timeouts["default"]["delete"]
    )
  }
}