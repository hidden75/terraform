
resource "azurerm_resource_group" "db_rg" {

  name = local.resource_group_name

  location = local.location

}
