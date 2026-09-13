terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.4.0"
    }
  }
}

provider "azurerm" {
  features {
  }

}

resource "azurerm_resource_group" "rgs" {
  name     = "Alok-rg"
  location = "Central India"
}

resource "azurerm_storage_account" "str" {
  name                     = "alokstr"
  resource_group_name      = azurerm_resource_group.rgs.name
  location                 = azurerm_resource_group.rgs.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}