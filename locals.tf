
# locals.tf



locals {

  resource_group_name = "db_resources"

  location = "East US"



  vnet_name          = "db_virtual_network"
  public_subnet_name = "public"

  private_subnet_name       = "private"
  vm_network_interface_name = "db_network_interface"
  vm_security_group         = "db_security_group"


  vm_name = "db-vm"

  vm_admin_username = "adminuser"

  vm_admin_password = "P@$$w0rd1234!"
}

