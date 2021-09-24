## Azure RG
resource "azurerm_resource_group" "MyTest-RG" {
  name     = "MyTest-RG"
  location = "West Europe"
}

## Azure Logic App
resource "azurerm_logic_app_workflow" "MyLogicapp" {
  name                = "MyLogicapp"
  location            = azurerm_resource_group.MyTest-RG.location
  resource_group_name = azurerm_resource_group.MyTest-RG.name
}
