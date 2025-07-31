resource "azuredevops_project_tags" "this" {
  count      = length(var.tags) > 0 ? 1 : 0
  project_id = azuredevops_project.this.id
  tags       = var.tags

  timeouts {
    create = try(
      local.metadata.resource_timeouts["azuredevops_project_tags"]["create"],
      local.metadata.resource_timeouts["default"]["create"]
    )
    read = try(
      local.metadata.resource_timeouts["azuredevops_project_tags"]["read"],
      local.metadata.resource_timeouts["default"]["read"]
    )
    update = try(
      local.metadata.resource_timeouts["azuredevops_project_tags"]["update"],
      local.metadata.resource_timeouts["default"]["update"]
    )
    delete = try(
      local.metadata.resource_timeouts["azuredevops_project_tags"]["delete"],
      local.metadata.resource_timeouts["default"]["delete"]
    )
  }
}