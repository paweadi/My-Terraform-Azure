resource "azurerm_resource_group" "rsaCognetiveServiceRG" {
  name     = "${var.rg_name}"
  location = "${var.rg_location}"
}

resource "azurerm_cognitive_account" "rsaCognetiveServiceCA" {
  name                = "${var.ca_name}"
  location            = azurerm_resource_group.rsaCognetiveServiceRG.location
  resource_group_name = azurerm_resource_group.rsaCognetiveServiceRG.name
  kind                = "${var.ca_kind}"

  sku_name = "${var.ca_sku}"
}
