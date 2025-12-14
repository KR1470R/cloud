terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.0"
    }
    azapi = {
      source  = "azure/azapi"
      version = "~> 1.12"
    }
  }
}

provider "azurerm" {
  features {}
}

provider "azapi" {}