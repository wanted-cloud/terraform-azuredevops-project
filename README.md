<!-- BEGIN_TF_DOCS -->
# wanted-cloud/terraform-azuredevops-project

Terraform building block helping with management of Azure DevOps project and related resources.

## Table of contents

- [Requirements](#requirements)
- [Providers](#providers)
- [Variables](#inputs)
- [Outputs](#outputs)
- [Resources](#resources)
- [Usage](#usage)
- [Contributing](#contributing)

## Requirements

The following requirements are needed by this module:

- <a name="requirement_azuredevops"></a> [azuredevops](#requirement\_azuredevops) (>= 0.1.0)

## Providers

The following providers are used by this module:

- <a name="provider_azuredevops"></a> [azuredevops](#provider\_azuredevops) (>= 0.1.0)

## Required Inputs

The following input variables are required:

### <a name="input_name"></a> [name](#input\_name)

Description: Name of the Azure DevOps project.

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_description"></a> [description](#input\_description)

Description: Description of the Azure DevOps project.

Type: `string`

Default: `""`

### <a name="input_metadata"></a> [metadata](#input\_metadata)

Description: Metadata definitions for the module, this is optional construct allowing override of the module defaults defintions of validation expressions, error messages, resource timeouts and default tags.

Type:

```hcl
object({
    resource_timeouts = optional(
      map(
        object({
          create = optional(string, "30m")
          read   = optional(string, "5m")
          update = optional(string, "30m")
          delete = optional(string, "30m")
        })
      ), {}
    )
    tags                     = optional(map(string), {})
    validator_error_messages = optional(map(string), {})
    validator_expressions    = optional(map(string), {})
  })
```

Default: `{}`

### <a name="input_version_control"></a> [version\_control](#input\_version\_control)

Description: Version control system for the Azure DevOps project. Can be 'Git' or 'TFVC'.

Type: `string`

Default: `"Git"`

### <a name="input_visibility"></a> [visibility](#input\_visibility)

Description: Visibility of the Azure DevOps project. Can be 'private' or 'public'.

Type: `string`

Default: `"private"`

### <a name="input_work_item_template"></a> [work\_item\_template](#input\_work\_item\_template)

Description: Work item template for the Azure DevOps project. Can be 'Agile', 'Scrum', or 'CMMI'.

Type: `string`

Default: `"WANTED.solutions CMMI v3"`

## Outputs

The following outputs are exported:

### <a name="output_project"></a> [project](#output\_project)

Description: The Azure DevOps project created by this module.

## Resources

The following resources are used by this module:

- [azuredevops_project.this](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/project) (resource)

## Usage

> For more detailed examples navigate to `examples` folder of this repository.

Module was also published via Terraform Registry and can be used as a module from the registry.

```hcl
module "example" {
  source  = "wanted-cloud/..."
  version = "x.y.z"
}
```

### Basic usage example

The minimal usage for the module is as follows:

```hcl
module "template" {
    source = "../.."
}
```
## Contributing

_Contributions are welcomed and must follow [Code of Conduct](https://github.com/wanted-cloud/.github?tab=coc-ov-file) and common [Contributions guidelines](https://github.com/wanted-cloud/.github/blob/main/docs/CONTRIBUTING.md)._

> If you'd like to report security issue please follow [security guidelines](https://github.com/wanted-cloud/.github?tab=security-ov-file).
---
<sup><sub>_2025 &copy; All rights reserved - WANTED.solutions s.r.o._</sub></sup>
<!-- END_TF_DOCS -->