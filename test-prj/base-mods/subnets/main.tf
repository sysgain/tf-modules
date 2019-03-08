resource "oci_core_subnet" "sub" {
  count                      = "${var.loop_count}"
  availability_domain        = "${var.ad_name[count.index]}"
  cidr_block                 = "${var.subnet_cidr_block[count.index]}"
  display_name               = "${var.subnet_display_name[count.index]}"
  dns_label                  = "${var.subnet_dns_label[count.index]}"
  compartment_id             = "${var.compartment_ocid}"
  vcn_id                     = "${var.vcn_ocid}"
  route_table_id             = "${var.route_table_ocid}"
  dhcp_options_id            = "${var.dhcp_ocid}"
  security_list_ids          = ["${var.security_list_ocid}"]
  prohibit_public_ip_on_vnic = "${var.prohibit_public_ip_on_vnic}"
  freeform_tags = "${var.tags}"
}
