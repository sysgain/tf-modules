variable "compartment_ocid" {
  description = "OCID of the compartment"
}

variable "igw_display_name" {
  description = "display name for internet gateway"
}

variable "vcn_ocid" {
  description = "OCID of the  virtual cloud network"
}
variable "tags" {
  type = "map"
}