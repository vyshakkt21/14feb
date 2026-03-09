# Resource-1: Create Public IP Address
resource "azurerm_public_ip" "web_linuxvm_publicip" {
  name                = "${local.resource_name_prefix}-linuxvm-publicip"
  resource_group_name = azurerm_resource_group.myrg.name
  location            = azurerm_resource_group.myrg.location
  allocation_method   = "Static"
  sku                 = "Standard"
  #domain_name_label = "app1-vm-${random_string.myrandom.id}"
}


