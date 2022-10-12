
variable "resource_group_name" {
   description = "Required name of the resource group"
   type        = string 
}
variable "name" {
   description = "Name of the security group"
   default     = "cloud-security-group"
}

variable "security_rule_name" {
   description = "Name of the virtual network"
   default     = "cloud-vnet"
}
variable "security_priority" {
   description = "Priority rule, values are between 100 and 4096"
   default     = "100"
}
variable "security_direction" {
   description = "Traffic direction incoming or outgoing"
   default     = "inbound"
}
variable "security_access" {
   description = "Access is allowed or deny"
   default     = "allow"
}
variable "security_protocol" {
   description = "Name of the protocol"
   default     = "tcp"
}
variable "security_source_port" {
   description = "Source Ports"
   default     = "*"
  type         = string
}
variable "secutiry_destination_port" {
   description = "Destination ports"
   default     = ["80, "443", "22"]
}

variable "security_source_address_prefix" {
   description = "IP address of source"
   default     = "*"
 
}
variable "security_destination_address_prefix" {
   description = "IP address of destination"
   default     = "*"
 
}






