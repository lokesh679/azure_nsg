data "azurerm_resource_group" "rg"{
  name = var.resource_group_name
}

resource "azurerm_network_security_group" "az_security_group"{
  name                = var.name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  
  security_rule {
    name                       = var.security_rule_name
    direction                  = var.security_direction
    access                     = var.security_access
    protocol                   = var.security_protocol
    source_port_range          = var.security_source_port
    destination_port_ranges    = var.security_destination_port
    source_address_prefix      = var.security_source_address_prefix
    destination_address_prefix = var.security_destination_address_prefix
  }
}
