output "volume_ocid" {
  value = ["${oci_core_volume.vol.*.id}"]
}
