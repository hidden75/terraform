
# network.tf



# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network#example-usage


resource "azurerm_virtual_network" "db_network" {

  name = local.vnet_name

  location = local.location

  resource_group_name = local.resource_group_name

  address_space = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "public" {

  name = local.public_subnet_name

  resource_group_name = local.resource_group_name

  virtual_network_name = local.vnet_name

  address_prefixes = ["10.0.1.0/24"]

}


resource "azurerm_subnet" "private" {

  name = local.private_subnet_name

  resource_group_name = local.resource_group_name

  virtual_network_name = local.vnet_name

  address_prefixes = ["10.0.2.0/24"]
}
