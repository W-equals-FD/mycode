output "public_ip_address" {
  value = azurerm_windows_virtual_machine.main.public_ip_address
}

output "name" {
  value = azurerm_windows_virtual_machine.main.name
}

output "username" {
  value = azurerm_windows_virtual_machine.main.admin_username
}

output "password" {
  value = azurerm_windows_virtual_machine.main.admin_password
  sensitive = true
}
