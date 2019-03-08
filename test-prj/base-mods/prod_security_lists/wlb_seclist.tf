resource "oci_core_security_list" "wlbseclist" {
  compartment_id = "${var.compartment_ocid}"
  vcn_id         = "${var.vcn_ocid}"
  display_name   = "${var.wlb_seclist_name}"
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
      destination = "10.9.0.0/16"
    },
    {
      protocol    = "6"
      stateless   = true
      destination = "0.0.0.0/0"

      tcp_options {
        "min" = 8443
        "max" = 8443
      }
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
  ]

  ingress_security_rules = [
    {
      protocol = "all"
      source   = "10.9.0.0/16"
    },
    {
      protocol = "all"
      source   = "13.92.84.162/32"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "13.92.84.162/32"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "13.92.84.162/32"

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
      source    = "13.92.84.162/32"

      tcp_options {
        source_port_range {
          "min" = 8443
          "max" = 8443
        }
      }
    },
    {
      protocol = "all"
      source   = "40.117.251.174/32"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "40.117.251.174/32"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "40.117.251.174/32"

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
      source    = "40.117.251.174/32"

      tcp_options {
        source_port_range {
          "min" = 8443
          "max" = 8443
        }
      }
    },
    {
      protocol = "all"
      source   = "96.76.54.33/32"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "96.76.54.33/32"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "96.76.54.33/32"

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
      source    = "96.76.54.33/32"

      tcp_options {
        source_port_range {
          "min" = 8443
          "max" = 8443
        }
      }
    },
  ]
}

resource "oci_core_security_list" "wlbseclist2" {
  compartment_id = "${var.compartment_ocid}"
  vcn_id         = "${var.vcn_ocid}"
  display_name   = "${var.wlb_seclist2_name}"

  egress_security_rules = []

  ingress_security_rules = [
    {
      protocol = "all"
      source   = "54.187.174.169/32"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "54.187.174.169/32"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "54.187.174.169/32"

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
      source    = "54.187.174.169/32"

      tcp_options {
        source_port_range {
          "min" = 8443
          "max" = 8443
        }
      }
    },
    {
      protocol = "all"
      source   = "54.187.205.235/32"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "54.187.205.235/32"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "54.187.205.235/32"

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
      source    = "54.187.205.235/32"

      tcp_options {
        source_port_range {
          "min" = 8443
          "max" = 8443
        }
      }
    },
    {
      protocol = "all"
      source   = "54.187.216.72/32"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "54.187.216.72/32"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "54.187.216.72/32"

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
      source    = "54.187.216.72/32"

      tcp_options {
        source_port_range {
          "min" = 8443
          "max" = 8443
        }
      }
    },
    {
      protocol = "all"
      source   = "54.241.31.99/32"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "54.241.31.99/32"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "54.241.31.99/32"

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
      source    = "54.241.31.99/32"

      tcp_options {
        source_port_range {
          "min" = 8443
          "max" = 8443
        }
      }
    },
    {
      protocol = "all"
      source   = "54.241.31.102/32"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "54.241.31.102/32"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "54.241.31.102/32"

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
      source    = "54.241.31.102/32"

      tcp_options {
        source_port_range {
          "min" = 8443
          "max" = 8443
        }
      }
    },
    {
      protocol = "all"
      source   = "54.241.34.107/32"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "54.241.34.107/32"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "54.241.34.107/32"

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
      source    = "54.241.34.107/32"

      tcp_options {
        source_port_range {
          "min" = 8443
          "max" = 8443
        }
      }
    },
  ]
}

resource "oci_core_security_list" "wlbseclist3" {
  compartment_id = "${var.compartment_ocid}"
  vcn_id         = "${var.vcn_ocid}"
  display_name   = "${var.wlb_seclist3_name}"

  egress_security_rules = []

  ingress_security_rules = [
    {
      protocol = "all"
      source   = "43.225.24.242/32"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "43.225.24.242/32"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "43.225.24.242/32"

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
      source    = "43.225.24.242/32"

      tcp_options {
        source_port_range {
          "min" = 8443
          "max" = 8443
        }
      }
    },
    {
      protocol = "all"
      source   = "115.98.209.200/32"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "115.98.209.200/32"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "115.98.209.200/32"

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
      source    = "115.98.209.200/32"

      tcp_options {
        source_port_range {
          "min" = 8443
          "max" = 8443
        }
      }
    },
    {
      protocol = "all"
      source   = "183.83.190.8/32"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "183.83.190.8/32"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "183.83.190.8/32"

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
      source    = "183.83.190.8/32"

      tcp_options {
        source_port_range {
          "min" = 8443
          "max" = 8443
        }
      }
    },
    {
      protocol = "all"
      source   = "14.98.166.186/32"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "14.98.166.186/32"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "14.98.166.186/32"

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
      source    = "14.98.166.186/32"

      tcp_options {
        source_port_range {
          "min" = 8443
          "max" = 8443
        }
      }
    },
  ]
}
