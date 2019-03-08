variable "loop_count" {
  description = "count for looping"
}

variable "ad_name" {
  type        = "list"
  description = "availability domain name"
}

variable "subnet_cidr_block" {
  type        = "list"
  description = "cidr block for subnet"
}

variable "subnet_display_name" {
  type        = "list"
  description = "display name for subnet"
}

variable "subnet_dns_label" {
  type        = "list"
  description = "doname name label for subnet"
}

variable "compartment_ocid" {
  description = "OCID of the compartment"
}

variable "vcn_ocid" {
  description = "OCID of the virtual cloud network"
}
variable "tags" {
  type = "map"
}

variable "route_table_ocid" {
  description = "OCID of route table"
}

variable "dhcp_ocid" {
  description = "OCID of dhcp options"
}

variable "security_list_ocid" {
  type        = "list"
  description = "OCID of security lists"
}

variable "prohibit_public_ip_on_vnic" {
  description = "True or false"
}
