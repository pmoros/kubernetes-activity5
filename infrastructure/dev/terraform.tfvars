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
aks_admin_group_object_ids = ["000c0641-d12f-4760-84eb-64bc4e1b3d44", "c160a942-c869-429f-8a96-f8c8296d57db",
  "34dec84a-67fb-42b8-b7cf-64998f2ed072",
  "95c7d29c-45e7-4171-8356-525ac9c3e85a",
  "8f8ad081-8368-430b-99b0-1f60ac33fd42",
"1a972602-9873-4568-b83a-2b7c18de18f0"]