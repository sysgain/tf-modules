output "iSCSI_IP_address" {
  value = "${oci_core_volume_attachment.vol_att.ipv4}"
}

output "iSCSI_port" {
  value = "${oci_core_volume_attachment.vol_att.port}"
}

output "iSCSI_iqn" {
  value = "${oci_core_volume_attachment.vol_att.iqn}"
}
