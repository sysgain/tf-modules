resource "oci_load_balancer" "lb" {
  shape          = "${var.lb_shape}"
  compartment_id = "${var.compartment_ocid}"
  subnet_ids     = ["${var.subnet_ocids}"]
  display_name   = "${var.lb_display_name}"
  is_private     = "${var.lb_is_private}"
  freeform_tags = "${var.tags}"
}

resource "oci_load_balancer_certificate" "lb-cert" {
  load_balancer_id   = "${oci_load_balancer.lb.id}"
  ca_certificate     = "${var.ca_certificate}"
  certificate_name   = "${var.certificate_name}"
  private_key        = "${var.private_key}"
  public_certificate = "${var.public_certificate}"
  
}
