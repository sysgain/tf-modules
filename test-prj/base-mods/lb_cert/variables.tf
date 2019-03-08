variable "lb_shape" {
  description = "Load balancer SKU shape valid values are 100Mbps, 400Mbps, 8000Mbps"
}

variable "compartment_ocid" {
  description = "OCID of the compartment"
}

variable "subnet_ocids" {
  type        = "list"
  description = "List of subnet OCIDs"
}

variable "lb_display_name" {
  description = "Display name for load balancers"
}

variable "lb_is_private" {
  description = "Is the load balancer private or not, valid values are true or false"
}

variable "ca_certificate" {
  description = "CA certificate for LB"
}

variable "certificate_name" {
  description = "Certificate name"
}

variable "private_key" {
  description = "Private key for LB"
}

variable "public_certificate" {
  description = "Public certificate for LB"
}
variable "tags" {
  type = "map"
}
