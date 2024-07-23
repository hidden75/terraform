# bastion.tf
	
	
resource "azurerm_public_ip" "bastion_public_ip" {
	
  name                = local.bastion_public_ip_name
	
  location            = local.location
	
  resource_group_name = local.resource_group_name
	
  allocation_method   = "Static"
	
  sku                 = "Standard"
	
}
	
	
resource "azurerm_bastion_host" "bastion_host" {
	
  name                = local.bastion_host_name
	
  location            = local.location
	
  resource_group_name = local.resource_group_name
	
 
	
  ip_configuration {
	
    name                 = "vm_ip_configuration"
	
    subnet_id            = azurerm_subnet.public.id
	
    public_ip_address_id = azurerm_public_ip.public-ip.id
	
  }
	
}
