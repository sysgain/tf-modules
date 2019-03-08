resource "oci_core_instance" "instance" {
  count               = "${var.loop_count}"
  availability_domain = "${var.ad_name[count.index]}"
  compartment_id      = "${var.compartment_ocid}"
  display_name        = "${var.instance_display_name[count.index]}"

  // image               = "${var.image_ocid}"
  source_details {
    source_type = "image"
    source_id   = "${var.image_ocid}"
  }

  shape = "${var.instance_shape}"
  freeform_tags = "${var.tags}"
  create_vnic_details {
    subnet_id              = "${var.subnet_ocid[count.index]}"
    display_name           = "${var.instance_display_name[count.index]}-VNIC"
    assign_public_ip       = "${var.assign_public_ip}"
    private_ip             = "${var.private_ip[count.index]}"
    hostname_label         = "${lower(var.instance_display_name[count.index])}"
    skip_source_dest_check = "${var.skip_source_dest_check}"
  }

  metadata {}
}

data "oci_core_instance_credentials" "instance_creds" {
  count       = "${var.loop_count}"
  instance_id = "${element(oci_core_instance.instance.*.id, count.index)}"
}
