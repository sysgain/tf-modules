resource "oci_core_volume_attachment" "vol_att" {
  attachment_type = "iscsi"
  compartment_id  = "${var.compartment_ocid}"
  instance_id     = "${var.instance_ocid}"
  volume_id       = "${var.volume_id}"
}
