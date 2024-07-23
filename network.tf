
# network.tf



# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network#example-usage


resource "azurerm_virtual_network" "db_network" {

  name = local.vnet_name

  location = local.location

  resource_group_name = local.resource_group_name

  address_space = ["10.0.0.0/16"]

}
