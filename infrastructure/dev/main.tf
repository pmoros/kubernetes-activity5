terraform {
  required_version = "=1.4.2"
  backend "azurerm" {
  }
}


provider "azurerm" {
  features {}
}

data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "rg" {
  name     = "rg-${var.project}-${var.environment}-${var.location}"
  location = var.location
  tags     = var.tags
}

