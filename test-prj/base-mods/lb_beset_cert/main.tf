resource "oci_load_balancer_backendset" "lb_beset" {
  name             = "${var.lb_beset_display_name}"
  load_balancer_id = "${var.lb_ocid}"
  policy           = "${var.lb_policy}"
  
  health_checker {
    port                = "${var.lb_health_checker_port}"
    protocol            = "${var.lb_health_checker_protocol}"
    response_body_regex = "${var.response_body_regex}"
    url_path            = "${var.url_path}"
  }

  ssl_configuration {
    certificate_name        = "${var.lb_cert_name}"
    verify_depth            = 6
    verify_peer_certificate = false
  }
}

resource "oci_load_balancer_backend" "lb_be" {
  count            = "${var.loop_count}"
  load_balancer_id = "${var.lb_ocid}"
  backendset_name  = "${oci_load_balancer_backendset.lb_beset.id}"
  ip_address       = "${var.instances_ip_address[count.index]}"
  port             = "${var.be_port}"
  backup           = false
  drain            = false
  offline          = false
  weight           = 1
  
}
