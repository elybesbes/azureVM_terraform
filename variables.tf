variable "resource_group_name" {
  default = "web-server-rg"
}

variable "location" {
  default = "East US"
}

variable "vnet_name" {
  default = "web-vnet"
}

variable "subnet_name" {
  default = "web-subnet"
}

variable "nsg_name" {
  default = "web-nsg"
}

variable "vnet_address_space" {
  default = ["10.0.0.0/16"]
}

variable "subnet_prefixes" {
  default = ["10.0.1.0/24"]
}

variable "vm_name" {
  default = "web-vm"
}

variable "vm_size" {
  default = "Standard_B1s"
}

variable "admin_username" {
  default = "azureuser"
}

variable "admin_password" {
  default = "P@ssw0rd1234"
}

variable "network_interface_id" {
  type        = string
}