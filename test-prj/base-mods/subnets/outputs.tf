output "subnet_ocid" {
  value = ["${oci_core_subnet.sub.*.id}"]
}
