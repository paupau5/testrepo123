variable "name" {
  description = "resource group name"
  type        = string
}

variable "location" {
  description = "azure region"
  type        = string
  default     = "westeurope"
}

variable "tags" {
  description = "list of tags"
  type        = map(string)
  default     = null
}
