resource "oci_core_security_list" "adsseclist" {
  compartment_id = "${var.compartment_ocid}"
  vcn_id         = "${var.vcn_ocid}"
  display_name   = "${var.ads_seclist_name}"
  freeform_tags = "${var.tags}"
  egress_security_rules = [
    {
      protocol    = "all"
      destination = "0.0.0.0/0"
    },
    {
      protocol = "17"

      udp_options {
        "min" = 123
        "max" = 123
      }

      destination = "0.0.0.0/0"
    },
  ]

  ingress_security_rules = [
    {
      protocol = "1"
      source   = "0.0.0.0/0"

      icmp_options {
        "type" = 3
        "code" = 4
      }
    },
    {
      protocol = "all"
      source   = "10.9.0.0/16"
    },
    {
      protocol = "all"
      source   = "10.8.0.0/16"
    },
  ]
}

resource "oci_core_security_list" "adsseclist2" {
  compartment_id = "${var.compartment_ocid}"
  vcn_id         = "${var.vcn_ocid}"
  display_name   = "${var.ads_seclist2_name}"

  egress_security_rules = []

  ingress_security_rules = []
}

resource "oci_core_security_list" "adsseclist3" {
  compartment_id = "${var.compartment_ocid}"
  vcn_id         = "${var.vcn_ocid}"
  display_name   = "${var.ads_seclist3_name}"

  egress_security_rules = []

  ingress_security_rules = []
}
