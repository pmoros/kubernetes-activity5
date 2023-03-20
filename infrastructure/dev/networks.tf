
resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-${var.project}-${var.environment}-${var.location}"
  address_space       = var.vnet_address_space
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name

  tags = var.tags
}

resource "azurerm_subnet" "aks_subnet" {
  name                 = "aks-subnet-${var.project}-${var.environment}-${var.location}"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.aks_subnets_address_prefixes

}