output "lb_ip_addresses" {
  value = ["${oci_load_balancer.lb.ip_addresses}"]
}

output "lb_ocid" {
  value = "${oci_load_balancer.lb.id}"
}
