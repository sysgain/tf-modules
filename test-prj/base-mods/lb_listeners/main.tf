resource "oci_load_balancer_listener" "lb-listener" {
  load_balancer_id         = "${var.lb_ocid}"
  name                     = "${var.lb_listener_display_name}"
  default_backend_set_name = "${var.lb_beset_ocid}"
  port                     = "${var.lb_listener_port}"
  protocol                 = "${var.lb_listener_protocol}"
  
}
