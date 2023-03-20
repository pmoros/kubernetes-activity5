
resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-${var.project}-${var.environment}-${var.location}"
  address_space       = var.vnet_address_space
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
}