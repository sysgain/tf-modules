resource "oci_core_route_table" "rt" {
  compartment_id = "${var.compartment_ocid}"
  vcn_id         = "${var.vcn_ocid}"
  display_name   = "${var.route_table_name}"
  freeform_tags = "${var.tags}"

  route_rules {
    destination        = "${var.cidr_block}"
    network_entity_id = "${var.network_entity_id}"
  }

  route_rules {
    destination        = "${var.cidr_block2}"
    network_entity_id = "${var.network_entity_id2}"
  }
}
