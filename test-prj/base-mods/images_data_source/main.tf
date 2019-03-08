data "oci_core_images" "imageOCID" {
  compartment_id           = "${var.compartment_ocid}"
  operating_system         = "${var.instanceOS}"
  operating_system_version = "${var.instanceOSVersion}"
}
