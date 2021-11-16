terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "=2.46.0"  
    }  
  }  
}
provider "azurerm" {
  subscription_id = " "
  features {}
}
  
resource "azurerm_resource_group" "terraform-test" {
  name     = "terraform-test-rg"
  location = "Central India"
}
