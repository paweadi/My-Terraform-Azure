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

terraform {   
 backend "azurerm" {     
 storage_account_name  = "tfstatestoragersa"     
 container_name        = "tfstate"     
 key                   = "terraform.tfstate"
 access_key            = "pzG8uYSxKSgaK8LwNMFNCnAsXHS4TMCnRi9mYEs7YCvJyWcZS/R/fJ5jyot4x9+D7jkvFHVLB9DHqLxDHY7xgw==" 
 } 
}
