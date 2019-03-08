resource "oci_core_security_list" "jnkseclist" {
  compartment_id = "${var.compartment_ocid}"
  vcn_id         = "${var.vcn_ocid}"
  display_name   = "${var.jnk_seclist_name}"
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
      destination = "10.11.0.0/16"
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
        "min" = 123
        "max" = 123
      }

      destination = "0.0.0.0/0"
    },
    {
      protocol = "6"

      tcp_options {
        "min" = 22
        "max" = 22
      }

      destination = "129.213.33.213/32"
    },
    {
      protocol = "6"

      tcp_options {
        "min" = 22
        "max" = 22
      }

      destination = "129.213.96.46/32"
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
      source   = "10.11.0.0/16"
    },
    {
      protocol = "6"

      tcp_options {
        "min" = 443
        "max" = 443
      }

      source = "10.11.5.0/24"
    },
    {
      protocol = "6"

      tcp_options {
        "min" = 443
        "max" = 443
      }

      source = "10.11.6.0/24"
    },
  ]
}

resource "oci_core_security_list" "jnkseclist2" {
  compartment_id        = "${var.compartment_ocid}"
  vcn_id                = "${var.vcn_ocid}"
  display_name          = "${var.jnk_seclist2_name}"
  egress_security_rules = []

  ingress_security_rules = []
}

resource "oci_core_security_list" "jnkseclist3" {
  compartment_id = "${var.compartment_ocid}"
  vcn_id         = "${var.vcn_ocid}"
  display_name   = "${var.jnk_seclist3_name}"

  egress_security_rules = []

  ingress_security_rules = []
}
