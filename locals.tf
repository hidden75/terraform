
# locals.tf



locals {

  resource_group_name = "db_resources"

  location = "West US"



  vnet_name          = "db_virtual_network"
  public_subnet_name = "public"

  private_subnet_name       = "private"
  vm_network_interface_name = "db_network_interface"
}

