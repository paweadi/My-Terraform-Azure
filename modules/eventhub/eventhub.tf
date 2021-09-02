resource "azurerm_resource_group" "example" {
  name     = "${var.evenhub_resourcegroup_name}"
  location = "${var.rg_location}"
}

resource "azurerm_eventhub_namespace" "example" {
  name                = "${var.eventhub_namespace_name}"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "${var.eventhub_namespace_sku}"
  capacity            = "${var.eventhub_namespace_capacity}"

  tags = {
    environment = "Production"
  }
}

resource "azurerm_eventhub" "example" {
  name                = "${var.evenhub_name}"
  namespace_name      = azurerm_eventhub_namespace.example.name
  resource_group_name = azurerm_resource_group.example.name
  partition_count     = "${var.eventhub_partition_count}"
  message_retention   = "${var.eventhub_message_retention}"
}
