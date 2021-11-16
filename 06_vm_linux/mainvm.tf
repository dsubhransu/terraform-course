terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "=2.46.0"  
    }  
  }  
}
resource "azurerm_resource_group" "terraform-test" {
    name     = "terraform-test-rg"
    location = "Central India"
}
  
  resource "azurerm_virtual_network" "example" {
    name                = "example-network"
    address_space       = ["10.0.0.0/16"]
    location            = azurerm_resource_group.example.location
    resource_group_name = azurerm_resource_group.example.name
}
