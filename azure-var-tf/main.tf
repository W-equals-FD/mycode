# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.loc
}

resource "azurerm_virtual_network" "example" {
  name                = var.vnet_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = var.add_space

}

# this is now an "input" value 
variable "loc" {
  type    = string
  default = "westus2"
}

variable "rg_name" {
  type    = string
  default = "myTFResourceGroup"
}

variable "vnet_name" {
  type    = string
  default = "testVNET"
}

variable "add_space" {
  type    = list(any)
  default = ["10.0.0.0/16"]
}
