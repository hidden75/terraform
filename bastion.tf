	
# bastion.tf
	
resource "azurerm_subnet" "AzureBastionSubnet" {
  name                 = "AzureBastionSubnet"  # This is the cause of the issue
  resource_group_name  = local.resource_group_name
  virtual_network_name = local.vnet_name
  address_prefixes     = ["10.0.1.0/24"]
}
	
resource "azurerm_public_ip" "bastion_public_ip" {
	
  name                = local.bastion_public_ip_name
	
  location            = local.location
	
  resource_group_name = local.resource_group_name
	
  allocation_method   = "Static"
	
  sku                 = "Standard"
	
}
	
	
resource "azurerm_bastion_host" "db-bastion" {
	
  name                = local.bastion_host_name
	
  location            = local.location
	
  resource_group_name = local.resource_group_name
	
 
	
  ip_configuration {
	
    name                 = "vm_ip_configuration"
	
    subnet_id            = azurerm_subnet.public.id
	
    public_ip_address_id = azurerm_public_ip.db-bastion-public-ip.id
	
  }
	
}
