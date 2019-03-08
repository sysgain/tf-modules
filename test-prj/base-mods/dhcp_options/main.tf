resource "oci_core_dhcp_options" "dhcp-options" {
  compartment_id = "${var.compartment_ocid}"
  vcn_id         = "${var.vcn_ocid}"
  display_name   = "${var.dhcp_display_name}"
  freeform_tags = "${var.tags}" 
  // required
  options {
    type        = "DomainNameServer"
    server_type = "VcnLocalPlusInternet"
  }

  options {
    type                = "SearchDomain"
    search_domain_names = ["ashnprvcn01.oraclevcn.com"]
  }
}
