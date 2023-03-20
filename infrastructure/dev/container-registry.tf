data "azurerm_role_definition" "acr_pull" {
  name = "AcrPull"
}

resource "azurerm_container_registry" "acraks" {
  name                          = "acr${var.owner}${var.project}${var.environment}001"
  resource_group_name           = azurerm_resource_group.rg.name
  location                      = azurerm_resource_group.rg.location
  public_network_access_enabled = true
  sku                           = "Basic"
  admin_enabled                 = false
}

resource "azurerm_role_assignment" "aks_acr_role" {
  scope              = azurerm_container_registry.acraks.id
  role_definition_id = data.azurerm_role_definition.acr_pull.id
  principal_id       = azurerm_kubernetes_cluster.aks.identity.0.principal_id
}
