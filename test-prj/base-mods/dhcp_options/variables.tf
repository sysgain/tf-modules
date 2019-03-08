variable "compartment_ocid" {
  description = "OCID of the compartment"
}

variable "vcn_ocid" {
  description = "OCID of the virtual cloud network"
}

variable "dhcp_display_name" {
  description = "display name for dhcp options"
}
variable "tags" {
  type = "map"
}