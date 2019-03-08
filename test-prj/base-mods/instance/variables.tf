variable "ad_name" {
  type        = "list"
  description = "name for availability domain"
}

variable "compartment_ocid" {
  description = "OCID of the compartment"
}

variable "loop_count" {
  description = "count for looping"
}

variable "instance_display_name" {
  type        = "list"
  description = "display name for instance"
}

variable "image_ocid" {
  type        = "list"
  description = "OCID of the image"
}

variable "instance_shape" {
  type        = "list"
  description = "size of the instance"
}

variable "subnet_ocid" {
  type        = "list"
  description = "OCID of the subnet"
}

variable "ssh_public_key" {
  description = "SSH public key for instance"
}

variable "bootstrap_file_path" {
  description = "file path of scripts "
}

variable "tags" {
  type = "map"
}

variable "private_ip" {
  type        = "list"
  description = "private ip address of the vm"
}

variable "assign_public_ip" {
  description = "true or false to assign public ip"
}

variable "skip_source_dest_check" {
  description = "true or false to skip source or destination"
}
