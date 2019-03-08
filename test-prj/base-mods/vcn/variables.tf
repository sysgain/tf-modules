variable "compartment_ocid" {
  description = "OCID of the compartment"
}

variable "vcn_display_name" {
  description = "display name for virtual cloud network"
}

variable "vcn_cidr_block" {
  description = "cidr block for virtual cloud network"
}

variable "vcn_dns_label" {
  description = "dns name for virtual cloud network"
}
variable "tags" {
  type = "map"
}