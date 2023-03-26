terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = ">= 3.0.0"
        }
    }
    required_version = ">= 1.1.0"

    cloud {
        organization = "IAC-pipeline12"

        workspaces {
            name = "Express-on-Azure"
        }
    }
}

    provider "azurerm" {
  features {}
}


resource "azurerm_container_registry" "example" {
  name                = "${var.prefix}registry"
  resource_group_name = "${var.azurerm_resource_group}"
  location            = "eastus"
  sku                 = "Basic"
}

data "azurerm_container_registry" "example" {
  name                = "mycontainer892"
  resource_group_name = "CD-Terraform-Pipeline"
}

output "login_server" {
  value = mycontainer892.azurecr.io
}