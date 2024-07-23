
resource "azurerm_resource_group" "db_resources" {

  name = local.resource_group_name

  location = local.location

}
