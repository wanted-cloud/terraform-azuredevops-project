/*
 * # wanted-cloud/terraform-azuredevops-project
 * 
 * Terraform building block helping with management of Azure DevOps project and related resources.
 */

resource "azuredevops_project" "this" {
  name               = "Example Project"
  visibility         = "private"
  version_control    = "Git"
  work_item_template = "Agile"
  description        = "Managed by Terraform"
  features = {
    testplans = "disabled"
    artifacts = "disabled"
  }
}