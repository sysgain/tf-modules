resource "oci_load_balancer" "lb" {
  shape          = "${var.lb_shape}"
  compartment_id = "${var.compartment_ocid}"
  subnet_ids     = ["${var.subnet_ocids}"]
  display_name   = "${var.lb_display_name}"
  is_private     = "${var.lb_is_private}"
  freeform_tags = "${var.tags}"
}
