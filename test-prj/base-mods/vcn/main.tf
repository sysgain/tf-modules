resource "oci_core_virtual_network" "vcn" {
  cidr_block     = "${var.vcn_cidr_block}"
  dns_label      = "${var.vcn_dns_label}"
  compartment_id = "${var.compartment_ocid}"
  display_name   = "${var.vcn_display_name}"
  freeform_tags = "${var.tags}"
}
