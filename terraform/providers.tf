terraform {
  required_version = ">= 1.10"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.30.0"
    }

    microsoft365wp = {
      source  = "terraprovider/microsoft365wp"
      version = "~> 0.16.0"
    }

    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 3.4.0"
    }
  }

  backend "azurerm" {
    key = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}

  subscription_id = var.AZURE_SUBSCRIPTION_ID
}

provider "azuread" {
  # Configuration options
}

provider "microsoft365wp" {
  # Configuration options
}
