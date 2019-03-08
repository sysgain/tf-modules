resource "oci_core_vnic_attachment" "vnic_attach" {
  create_vnic_details {
    subnet_id = "${var.subnet_ocid}"
    freeform_tags = "${var.tags}"
    #Optional

    display_name           = "${var.vnic_display_name}"
    private_ip             = "${var.private_ip}"
    assign_public_ip       = "${var.assign_public_ip}"
    skip_source_dest_check = "${var.skip_source_dest_check}"
  }

  instance_id  = "${var.instance_ocid}"
  display_name = "${var.vnic_attachment_display_name}"
}

data "oci_core_vnic" "attached_vnics" {
  vnic_id = "${oci_core_vnic_attachment.vnic_attach.vnic_id}"
}
