
module "vcn" {
  source           = "E:/stack-builder/test-prj/base-mods/vcn"
  compartment_ocid = "${var.compartment_ocid}"
  vcn_display_name = "${var.vcn_display_name}"
  vcn_cidr_block   = "${var.vcn_cidr_block}"
  vcn_dns_label    = "${var.vcn_dns_label}"
  tags = "${var.tags}"
}