resource "oci_core_internet_gateway" "igw" {
  compartment_id = "${var.compartment_ocid}"
  display_name   = "${var.igw_display_name}"
  vcn_id         = "${var.vcn_ocid}"
  freeform_tags = "${var.tags}" 
}
