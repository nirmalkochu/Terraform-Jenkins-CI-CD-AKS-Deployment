
resource "azurerm_resource_group" "rg" {
  location = var.resource_group_location
  name     = "prod-resource-grp"

  tags = {
    environment = "Prod"
  }
}

resource "azurerm_container_registry" "acr" {
  name                = "ProdResourceACR"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Basic"
  admin_enabled       = false
  tags = {
    environment = "Prod"
  }
}

resource "azurerm_kubernetes_cluster" "aks-cluster" {
  location            = azurerm_resource_group.rg.location
  name                = "prod-resource-aks"
  resource_group_name = "prod-resource-grp"

  dns_prefix = "prod-dns-aks"
  tags = {
    environment = "Prod"
  }

  identity {
    type = "SystemAssigned"
  }

  default_node_pool {
    name       = "agentpool"
    vm_size    = "Standard_D2_v2"
    node_count = var.node_count
  }

  linux_profile {
    admin_username = var.username

    ssh_key {
      key_data = azapi_resource_action.ssh_public_key_gen.output.publicKey
    }
  }

  network_profile {
    network_plugin    = "kubenet"
    load_balancer_sku = "standard"
  }
}

