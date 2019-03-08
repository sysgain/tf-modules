resource "oci_core_security_list" "mgtseclist" {
  compartment_id = "${var.compartment_ocid}"
  vcn_id         = "${var.vcn_ocid}"
  display_name   = "${var.mgt_seclist_name}"
  freeform_tags = "${var.tags}"
  egress_security_rules = [
    {
      protocol    = "all"
      destination = "0.0.0.0/0"
    },
  ]

  ingress_security_rules = [
    {
      protocol = "1"

      icmp_options {
        "type" = 3
        "code" = 4
      }

      source = "0.0.0.0/0"
    },
    {
      protocol = "6"

      tcp_options {
        "min" = 3389
        "max" = 3389
      }

      source = "0.0.0.0/0"
    },
    {
      protocol = "all"
      source   = "10.8.0.0/16"
    },
  ]
}

resource "oci_core_security_list" "mgtseclist2" {
  compartment_id = "${var.compartment_ocid}"
  vcn_id         = "${var.vcn_ocid}"
  display_name   = "${var.mgt_seclist2_name}"

  egress_security_rules = []

  ingress_security_rules = []
}

resource "oci_core_security_list" "mgtseclist3" {
  compartment_id        = "${var.compartment_ocid}"
  vcn_id                = "${var.vcn_ocid}"
  display_name          = "${var.mgt_seclist3_name}"
  egress_security_rules = []

  ingress_security_rules = []
}
