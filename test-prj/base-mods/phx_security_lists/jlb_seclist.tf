/* resource "oci_core_security_list" "jlbseclist" {
  compartment_id = "${var.compartment_ocid}"
  vcn_id         = "${var.vcn_ocid}"
  display_name   = "${var.jlb_seclist_name}"
  freeform_tags = "${var.tags}"
  egress_security_rules = [
    {
      protocol    = "6"
      stateless   = true
      destination = "0.0.0.0/0"

      tcp_options {
        "min" = 80
        "max" = 80
      }
    },
    {
      protocol    = "all"
      destination = "10.10.0.0/16"
    },
    {
      protocol    = "6"
      stateless   = true
      destination = "0.0.0.0/0"

      tcp_options {
        source_port_range {
          "min" = 443
          "max" = 443
        }
      }
    },
    {
      protocol    = "6"
      stateless   = true
      destination = "0.0.0.0/0"

      tcp_options {
        "min" = 8080
        "max" = 8080
      }
    },
    {
      protocol    = "6"
      stateless   = true
      destination = "0.0.0.0/0"
    },
    {
      protocol    = "6"
      stateless   = false
      destination = "10.10.13.0/24"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
  ]

  ingress_security_rules = [
    {
      protocol  = "1"
      source    = "0.0.0.0/0"
      stateless = true

      icmp_options {
        "type" = 3
        "code" = 4
      }
    },
    {
      protocol = "all"
      source   = "10.10.0.0/16"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "0.0.0.0/0"

      tcp_options {
        source_port_range {
          "min" = 80
          "max" = 80
        }
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "0.0.0.0/0"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "0.0.0.0/0"

      tcp_options {
        source_port_range {
          "min" = 8080
          "max" = 8080
        }
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "0.0.0.0/0"
    },
  ]
}

resource "oci_core_security_list" "jlbseclist2" {
  compartment_id = "${var.compartment_ocid}"
  vcn_id         = "${var.vcn_ocid}"
  display_name   = "${var.jlb_seclist2_name}"

  egress_security_rules = []

  ingress_security_rules = []
}

resource "oci_core_security_list" "jlbseclist3" {
  compartment_id = "${var.compartment_ocid}"
  vcn_id         = "${var.vcn_ocid}"
  display_name   = "${var.jlb_seclist3_name}"

  egress_security_rules = []

  ingress_security_rules = []
}
 */