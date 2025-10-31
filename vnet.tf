resource "azurerm_virtual_network" "vnet" {
    name = "vnet01" 
    address_space = ["172.16.0.0/16"]
    resource_group_name = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location

<<<<<<< HEAD
   tags = {
    name = "vcube"
}
} 
=======
<<<<<<< HEAD
   tags = {
    name = "krishna"
=======
    
>>>>>>> 905809e6eabc0dd1863f49ac4060d312076fd14f
}
}

>>>>>>> 10af2cadb579f4656bd4c0d780f8ef121a7c7c3e

resource azurerm_subnet "subnet" {
    address_prefixes = ["172.16.1.0/24"]
    name = "subnet-01" 
    resource_group_name = azurerm_resource_group.rg.name
    virtual_network_name = azurerm_virtual_network.vnet.name
}