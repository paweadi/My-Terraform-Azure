provider "azurerm" {
#   version = "=1.31.0"
  features {}
}

terraform {
  required_providers {
    databricks = {
      source  = "databrickslabs/databricks"
      version = "0.3.7"
    }
  }
}
