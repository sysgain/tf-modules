resource "oci_core_security_list" "rdbseclist" {
  compartment_id = "${var.compartment_ocid}"
  vcn_id         = "${var.vcn_ocid}"
  display_name   = "${var.rdb_seclist_name}"
  freeform_tags = "${var.tags}"
  egress_security_rules = [
    {
      protocol = "1"

      icmp_options {
        "type" = 3
        "code" = 4
      }

      destination = "0.0.0.0/0"
    },
    {
      protocol    = "all"
      destination = "10.10.0.0/16"
    },
    {
      protocol = "6"

      tcp_options {
        "min" = 8080
        "max" = 8080
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
      protocol = "6"

      tcp_options {
        "min" = 80
        "max" = 80
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
  ]

  ingress_security_rules = [
    {
      protocol = "all"
      source   = "10.10.34.2/32"
    },
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
        "min" = 2002
        "max" = 2002
      }

      source = "10.10.9.6/32"
    },
    {
      protocol = "6"

      tcp_options {
        "min" = 8080
        "max" = 8080
      }

      source = "10.10.9.6/32"
    },
    {
      protocol = "6"

      tcp_options {
        "min" = 9082
        "max" = 9082
      }

      source = "10.10.9.6/32"
    },
    {
      protocol = "6"

      tcp_options {
        "min" = 2002
        "max" = 2002
      }

      source = "10.10.10.6/32"
    },
    {
      protocol = "6"

      tcp_options {
        "min" = 8080
        "max" = 8080
      }

      source = "10.10.10.6/32"
    },
    {
      protocol = "6"

      tcp_options {
        "min" = 9082
        "max" = 9082
      }

      source = "10.10.10.6/32"
    },
    {
      protocol = "6"

      tcp_options {
        "min" = 28015
        "max" = 28015
      }

      source = "10.10.26.0/24"
    },
    {
      protocol = "6"

      tcp_options {
        "min" = 28015
        "max" = 28015
      }

      source = "10.10.27.0/24"
    },
    {
      protocol = "6"

      tcp_options {
        "min" = 28015
        "max" = 28015
      }

      source = "10.10.28.0/24"
    },
    {
      protocol = "all"
      source   = "10.10.17.0/24"
    },
    {
      protocol = "all"
      source   = "10.10.18.0/24"
    },
    {
      protocol = "all"
      source   = "10.10.19.0/24"
    },
    {
      protocol = "6"

      tcp_options {
        "min" = 2002
        "max" = 2002
      }

      source = "10.10.15.4/32"
    },
  ]
}

resource "oci_core_security_list" "rdbseclist2" {
  compartment_id         = "${var.compartment_ocid}"
  vcn_id                 = "${var.vcn_ocid}"
  display_name           = "${var.rdb_seclist2_name}"
  egress_security_rules  = []
  ingress_security_rules = []
}

resource "oci_core_security_list" "rdbseclist3" {
  compartment_id         = "${var.compartment_ocid}"
  vcn_id                 = "${var.vcn_ocid}"
  display_name           = "${var.rdb_seclist3_name}"
  egress_security_rules  = []
  ingress_security_rules = []
}
