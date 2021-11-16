resource "azurerm_virtual_network" "terraform-test" {
  name                = "terraform-test-vnet"
  address_space       = ["18.0.0.0/16"]
  location            = azurerm_resource_group.terraform-test.location
  resource_group_name = azurerm_resource_group.terraform-test.name
}

resource "azurerm_subnet" "terraform-test" {
  name                 = "SubnetA"
  resource_group_name  = azurerm_resource_group.terraform-test.name
  virtual_network_name = azurerm_virtual_network.terraform-test.name
  address_prefixes     = ["18.0.2.0/24"]
}
