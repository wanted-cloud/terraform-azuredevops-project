/*
 * # wanted-cloud/terraform-azuredevops-project
 * 
 * Terraform building block helping with management of Azure DevOps project and related resources.
 */

resource "azuredevops_project" "this" {
  name               = var.name
  description        = var.description
  visibility         = var.visibility
  version_control    = var.version_control
  work_item_template = var.work_item_template

  // Set features blank as they will be not be managed by this resource
  //features = {}
  // Ignore changes to features as they will be not be managed by this resource
  lifecycle {
    ignore_changes = [
      features,
    ]
  }

  timeouts {
    create = try(
      local.metadata.resource_timeouts["azuredevops_project"]["create"],
      local.metadata.resource_timeouts["default"]["create"]
    )
    read = try(
      local.metadata.resource_timeouts["azuredevops_project"]["read"],
      local.metadata.resource_timeouts["default"]["read"]
    )
    update = try(
      local.metadata.resource_timeouts["azuredevops_project"]["update"],
      local.metadata.resource_timeouts["default"]["update"]
    )
    delete = try(
      local.metadata.resource_timeouts["azuredevops_project"]["delete"],
      local.metadata.resource_timeouts["default"]["delete"]
    )
  }
}
