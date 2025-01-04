# Terraform Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.0" 
    }
    random = {
      source = "hashicorp/random"
      version = ">= 3.0"
    }
  }
# Terraform State Storage to Azure Storage Container
  backend "azurerm" {
    resource_group_name   = "terraform-store"
    storage_account_name  = "terraformstore454"
    container_name        = "statefilecontainer"
    key                   = "cliworkspaces-terraform.tfstate"
  }   
}

# Provider Block
provider "azurerm" {
 features {}
 subscription_id = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
}

# Random String Resource
resource "random_string" "myrandom" {
  length = 6
  upper = false 
  special = false
  numeric = false   
}


