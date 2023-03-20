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

# Networks
variable "vnet_address_space" {
  type        = list(string)
  description = "The address space that is used by the virtual network."
}

variable "aks_subnets_address_prefixes" {
  type        = list(string)
  description = "The address prefix to use for the subnet."
}

# AKS
variable "aks_admin_group_object_ids" {
  type        = list(string)
  description = "The object IDs of a group of cluster administrators."
}