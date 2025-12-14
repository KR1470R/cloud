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

  subscription_id = "14e7e7e4-177b-4446-9acb-ce63ab09c3e0"
}