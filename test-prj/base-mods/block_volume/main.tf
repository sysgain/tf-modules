resource "oci_core_volume" "vol" {
  count               = "${var.loop_count}"
  availability_domain = "${var.ad_name[count.index]}"
  compartment_id      = "${var.compartment_ocid}"
  display_name        = "${var.volume_display_name[count.index]}"
  size_in_gbs         = "${var.bv_size}"
  freeform_tags = "${var.tags}"
}
