resource "oci_core_security_list" "chfseclist" {
  compartment_id = "${var.compartment_ocid}"
  vcn_id         = "${var.vcn_ocid}"
  display_name   = "${var.chf_seclist_name}"
  freeform_tags = "${var.tags}"
  egress_security_rules = [
    {
      protocol    = "1"
      destination = "0.0.0.0/0"

      icmp_options {
        "type" = 3
        "code" = 4
      }
    },
    {
      protocol    = "all"
      destination = "10.9.0.0/16"
    },
    {
      protocol = "6"

      tcp_options {
        "min" = 80
        "max" = 80
      }

      destination = "0.0.0.0/0"
    },
    {
      protocol = "6"

      tcp_options {
        "min" = 443
        "max" = 443
      }

      destination = "0.0.0.0/0"
    },
    {
      protocol = "6"

      tcp_options {
        "min" = 10516
        "max" = 10516
      }

      destination = "0.0.0.0/0"
    },
    {
      protocol = "6"

      tcp_options {
        "min" = 10514
        "max" = 10514
      }

      destination = "0.0.0.0/0"
    },
    {
      protocol = "17"

      udp_options {
        "min" = 8125
        "max" = 8125
      }

      destination = "0.0.0.0/0"
    },
    {
      protocol = "6"

      tcp_options {
        "min" = 8126
        "max" = 8126
      }

      destination = "0.0.0.0/0"
    },
    {
      protocol = "6"

      tcp_options {
        "min" = 2002
        "max" = 2002
      }

      destination = "10.8.0.0/16"
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

      icmp_options {
        "type" = 3
        "code" = 4
      }

      source = "0.0.0.0/0"
    },
    {
      protocol = "all"
      source   = "10.9.0.0/16"
    },
    {
      protocol = "6"

      tcp_options {
        "min" = 443
        "max" = 443
      }

      source = "0.0.0.0/0"
    },
  ]
}

resource "oci_core_security_list" "chfseclist2" {
  compartment_id = "${var.compartment_ocid}"
  vcn_id         = "${var.vcn_ocid}"
  display_name   = "${var.chf_seclist2_name}"

  egress_security_rules = []

  ingress_security_rules = []
}

resource "oci_core_security_list" "chfseclist3" {
  compartment_id = "${var.compartment_ocid}"
  vcn_id         = "${var.vcn_ocid}"
  display_name   = "${var.chf_seclist3_name}"

  egress_security_rules = []

  ingress_security_rules = []
}
