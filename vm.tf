
# vm.tf



# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface#example-usage

resource "azurerm_network_interface" "db_vm_network_interface" {

  name = local.vnet_name

  location = local.location

  resource_group_name = local.resource_group_name





  ip_configuration {

    name = "vm_ip_configrationinternal"

    subnet_id = azurerm_subnet.private.id

    private_ip_address_allocation = "Dynamic"

  }

}
