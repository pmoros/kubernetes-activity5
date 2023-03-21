
data "azurerm_role_definition" "network_contributor" {
  name = "Network Contributor"
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "aks-${var.project}-${var.environment}-${var.location}"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "aks-${var.owner}-${var.project}-${var.environment}-${var.location}"

  sku_tier           = "Free"
  kubernetes_version = "1.23.15"


  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
    os_sku     = "Ubuntu"

    vnet_subnet_id = azurerm_subnet.aks_subnet.id
  }

  network_profile {
    network_plugin    = "azure"
    load_balancer_sku = "standard"
    outbound_type     = "loadBalancer"
    load_balancer_profile {
      managed_outbound_ip_count = 1
    }
  }

  identity {
    type = "SystemAssigned"
  }

  azure_active_directory_role_based_access_control {
    managed                = true
    admin_group_object_ids = var.aks_admin_group_object_ids
    azure_rbac_enabled     = true
  }

  local_account_disabled = false

  tags = var.tags
}

resource "azurerm_role_assignment" "aks_network_contributor" {
  scope              = azurerm_subnet.aks_subnet.id
  role_definition_id = data.azurerm_role_definition.network_contributor.id
  principal_id       = azurerm_kubernetes_cluster.aks.kubelet_identity[0].object_id
}