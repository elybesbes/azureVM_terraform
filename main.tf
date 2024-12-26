module "resource_group" {
  source  = "./modules/resource_group"
  name    = var.resource_group_name
  location = var.location
}

module "network" {
  source              = "./modules/network"
  vnet_name           = var.vnet_name
  subnet_name         = var.subnet_name
  nsg_name            = var.nsg_name
  location            = module.resource_group.resource_group_location
  resource_group_name = module.resource_group.resource_group_name
  address_space       = var.vnet_address_space
  subnet_prefixes     = var.subnet_prefixes
}

module "virtual_machine" {
  source               = "./modules/virtual_machine"
  vm_name              = var.vm_name
  location             = module.resource_group.resource_group_location
  resource_group_name  = module.resource_group.resource_group_name
  network_interface_id = var.network_interface_id
  vm_size              = var.vm_size
  admin_username       = var.admin_username
  admin_password       = var.admin_password
}
