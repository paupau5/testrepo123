variable "name" {
  description = "Log Analytics Workspace name"
  type        = string
}

variable "rg_name" {
  description = "parent resource group name"
  type        = string
}

variable "location" {
  description = "azure region"
  type        = string
  default     = "westeurope"
}

variable "log_retention" {
  description = "data retention in days"
  type        = number
  default     = 30

  validation {
    condition     = var.log_retention >= 30 && var.log_retention <= 730
    error_message = "data retention period must be between 30 & 730 days"
  }
}

variable "tags" {
  description = "list of tags"
  type        = map(string)
  default     = null
}
