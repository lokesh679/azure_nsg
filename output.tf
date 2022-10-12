output "az_security_group_id"{
  description = "Id of the newly created security group"
  value       = azurerm_network_security_group.az_security_group.id
}
