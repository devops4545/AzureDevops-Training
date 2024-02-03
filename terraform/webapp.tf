terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.89.0"

    }
  }
}


provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "myrg1" {
  name     = "terraform-webapp"
  location = "East US"
}

resource "azurerm_service_plan" "asp1" {
  name                = "myasp01"
  resource_group_name = azurerm_resource_group.myrg1.name
  location            = azurerm_resource_group.myrg1.location
  sku_name            = "F1"
  os_type             = "Windows"
}

resource "azurerm_windows_web_app" "webapp1" {
  name                = "vvhitwebapp454"
  resource_group_name = azurerm_resource_group.myrg1.name
  location            = azurerm_service_plan.myrg1.name
  service_plan_id     = azurerm_service_plan.asp1.id

  site_config {}
}
