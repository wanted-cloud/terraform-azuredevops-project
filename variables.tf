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