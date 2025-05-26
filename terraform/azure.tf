resource "azurerm_resource_group" "rg1" {
  name     = "${var.NAMING_PREFIX}-rg1"
  location = var.AZURE_REGION

  tags = local.tags
}

resource "azurerm_network_security_group" "nsg1" {
  name                = "${var.NAMING_PREFIX}-nsg1"
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
}

resource "azurerm_virtual_network" "vnet1" {
  name                = "${var.NAMING_PREFIX}-vnet1"
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["8.8.8.8"]

  subnet {
    name             = "${var.NAMING_PREFIX}-subnet1"
    address_prefixes = ["10.0.1.0/24"]
    security_group   = azurerm_network_security_group.nsg1.id
  }

  subnet {
    name             = "${var.NAMING_PREFIX}-subnet2"
    address_prefixes = ["10.0.2.0/24"]
    security_group   = azurerm_network_security_group.nsg1.id
  }

  tags = local.tags
}
