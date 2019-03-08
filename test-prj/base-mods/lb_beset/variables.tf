variable "lb_beset_display_name" {
  description = "Display name for load balancer's backend set"
}

variable "lb_ocid" {
  description = "OCID for load balancers"
}

variable "lb_policy" {
  description = "Policy for load balancers's backend set, valid values are ROUND_ROBIN"
}

variable "lb_health_checker_port" {
  description = "Health checker port for load balancer's backend set"
}

variable "lb_health_checker_protocol" {
  description = "Health checker protocol for load balancer's backend set"
}

variable "response_body_regex" {
  description = "Response regex"
}

variable "url_path" {
  description = "Url path"
}

variable "loop_count" {
  description = "Loop count for backends"
}

variable "instances_ip_address" {
  type        = "list"
  description = "Instances IP address"
}

variable "be_port" {
  description = "Backend port"
}
