variable "ad_name" {
  type        = "list"
  description = "availability domain name"
}

variable "loop_count" {
  description = "count for looping"
}

variable "volume_display_name" {
  type        = "list"
  description = "display name for volume"
}

variable "compartment_ocid" {
  description = "OCID of the compartment"
}

variable "bv_size" {
  description = "block volume size in GB"
}
variable "tags" {
  type = "map"
}