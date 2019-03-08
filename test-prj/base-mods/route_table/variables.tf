variable "compartment_ocid" {
  description = "OCID of the compartment"
}

variable "route_table_name" {
  description = "display name for route table"
}

variable "vcn_ocid" {
  description = "OCID of the virtual cloud network"
}

variable "cidr_block" {}
variable "network_entity_id" {}


variable "cidr_block2" {}
variable "network_entity_id2" {}

variable "tags" {
  type = "map"
}
