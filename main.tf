resource "azurerm_resource_group" "aks_rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_cluster_name
  location            = azurerm_resource_group.aks_rg.location
  resource_group_name = azurerm_resource_group.aks_rg.name
  dns_prefix          = "cst8918aks"

  default_node_pool {
    name                = "default"
    node_count          = var.node_count_min
    min_count           = var.node_count_min
    max_count           = var.node_count_max
    vm_size             = var.node_vm_size
    enable_auto_scaling = true
  }

  identity {
    type = "SystemAssigned"
  }

  kubernetes_version = null # Automatically use latest
}
