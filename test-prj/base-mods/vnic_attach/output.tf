output "SecondaryPublicIPAddresses" {
  value = ["${data.oci_core_vnic.attached_vnics.*.public_ip_address}"]
}

output "SecondaryPrivateIPAddresses" {
  value = ["${data.oci_core_vnic.attached_vnics.*.private_ip_address}"]
}
