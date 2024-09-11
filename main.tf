terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.105.0"
    }
  }
}

resource "azurerm_resource_group" "mate-terraform-rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "mate-terraform-sa" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.mate-terraform-rg.name
  location                 = azurerm_resource_group.mate-terraform-rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = var.tags
}
