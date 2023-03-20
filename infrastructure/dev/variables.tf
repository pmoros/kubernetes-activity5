variable "owner" {
  type        = string
  default     = "owner"
  description = "The name of the owner of this example."
}

variable "project" {
  type        = string
  default     = "sample"
  description = "Project name"
}

variable "location" {
  type        = string
  default     = "eastus"
  description = "Region"
}

variable "environment" {
  type        = string
  default     = "dev"
  description = "Environment"
}

variable "tags" {
  type        = map(any)
  default     = {}
  description = "Tags"
}

# Network
variable "vnet_address_space" {
  type        = list(string)
  description = "The address space that is used by the virtual network."
}