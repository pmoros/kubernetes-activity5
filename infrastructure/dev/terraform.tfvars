owner       = "pmoros"
project     = "activity5"
location    = "eastus"
environment = "dev"
# Tags
tags = {
  environment = "dev"
  costcenter  = "it"
  lob         = "acad"
  location    = "eastus"
}

# Network
vnet_address_space           = ["172.16.1.0/24"]
aks_subnets_address_prefixes = ["172.16.1.0/25"]

# AKS
aks_admin_group_object_ids = ["000c0641-d12f-4760-84eb-64bc4e1b3d44"]