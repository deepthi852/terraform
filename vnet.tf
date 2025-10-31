resource "azurerm_virtual_network" "vnet" {
    name = "vnet01" 
    address_space = ["172.16.0.0/16"]
    resource_group_name = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location


   tags = {
    name = "vcube"
}
<<<<<<< HEAD
} 
   
=======
}

>>>>>>> 10af2cadb579f4656bd4c0d780f8ef121a7c7c3e
>>>>>>> 2a7b14e48df8cc152a40346920aa8cdc7b98968b

resource azurerm_subnet "subnet" {
    address_prefixes = ["172.16.1.0/24"]
    name = "subnet-01" 
    resource_group_name = azurerm_resource_group.rg.name
    virtual_network_name = azurerm_virtual_network.vnet.name
}
