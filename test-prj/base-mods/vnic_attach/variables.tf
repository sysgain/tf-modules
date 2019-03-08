variable "instance_ocid" {
  description = "OCID of the instance"
}

variable "subnet_ocid" {
  description = "OCID of the subnet"
}

variable "vnic_display_name" {
  description = "Display name of VNIC"
}

variable "private_ip" {}
variable "assign_public_ip" {}
variable "skip_source_dest_check" {}
variable "vnic_attachment_display_name" {}

variable "tags" {
  type = "map"
}
