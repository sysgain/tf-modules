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
      destination = "10.11.0.0/16"
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
      source   = "10.11.0.0/16"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "10.11.0.0/16"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "10.11.0.0/16"

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
      source    = "10.11.0.0/16"

      tcp_options {
        source_port_range {
          "min" = 8443
          "max" = 8443
        }
      }
    },
    {
      protocol = "all"
      source   = "52.191.192.209/32"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "52.191.192.209/32"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "52.191.192.209/32"

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
      source    = "52.191.192.209/32"

      tcp_options {
        source_port_range {
          "min" = 8443
          "max" = 8443
        }
      }
    },
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
    {
      protocol = "all"
      source   = "220.158.153.239/32"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "220.158.153.239/32"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "220.158.153.239/32"

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
      source    = "220.158.153.239/32"

      tcp_options {
        source_port_range {
          "min" = 8443
          "max" = 8443
        }
      }
    },
    {
      protocol = "all"
      source   = "59.91.227.148/32"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "59.91.227.148/32"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "59.91.227.148/32"

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
      source    = "59.91.227.148/32"

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
      source   = "115.111.224.194/32"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "115.111.224.194/32"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "115.111.224.194/32"

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
      source    = "115.111.224.194/32"

      tcp_options {
        source_port_range {
          "min" = 8443
          "max" = 8443
        }
      }
    },
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
    {
      protocol = "all"
      source   = "157.48.179.70/32"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "157.48.179.70/32"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "157.48.179.70/32"

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
      source    = "157.48.179.70/32"

      tcp_options {
        source_port_range {
          "min" = 8443
          "max" = 8443
        }
      }
    },
    {
      protocol = "all"
      source   = "157.48.142.139/32"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "157.48.142.139/32"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "157.48.142.139/32"

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
      source    = "157.48.142.139/32"

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
      source   = "137.117.68.206/32"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "137.117.68.206/32"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "137.117.68.206/32"

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
      source    = "137.117.68.206/32"

      tcp_options {
        source_port_range {
          "min" = 8443
          "max" = 8443
        }
      }
    },
    {
      protocol = "all"
      source   = "27.6.70.94/32"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "27.6.70.94/32"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "27.6.70.94/32"

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
      source    = "27.6.70.94/32"

      tcp_options {
        source_port_range {
          "min" = 8443
          "max" = 8443
        }
      }
    },
    {
      protocol = "all"
      source   = "42.111.6.176/32"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "42.111.6.176/32"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "42.111.6.176/32"

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
      source    = "42.111.6.176/32"

      tcp_options {
        source_port_range {
          "min" = 8443
          "max" = 8443
        }
      }
    },
    {
      protocol = "all"
      source   = "117.192.222.175/32"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "117.192.222.175/32"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "117.192.222.175/32"

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
      source    = "117.192.222.175/32"

      tcp_options {
        source_port_range {
          "min" = 8443
          "max" = 8443
        }
      }
    },
    {
      protocol = "all"
      source   = "35.167.74.121/32"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "35.167.74.121/32"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "35.167.74.121/32"

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
      source    = "35.167.74.121/32"

      tcp_options {
        source_port_range {
          "min" = 8443
          "max" = 8443
        }
      }
    },
    {
      protocol = "all"
      source   = "35.166.202.113/32"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "35.166.202.113/32"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "35.166.202.113/32"

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
      source    = "35.166.202.113/32"

      tcp_options {
        source_port_range {
          "min" = 8443
          "max" = 8443
        }
      }
    },
    {
      protocol = "all"
      source   = "35.160.3.103/32"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "35.160.3.103/32"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "35.160.3.103/32"

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
      source    = "35.160.3.103/32"

      tcp_options {
        source_port_range {
          "min" = 8443
          "max" = 8443
        }
      }
    },
    {
      protocol = "all"
      source   = "54.183.64.135/32"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "54.183.64.135/32"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "54.183.64.135/32"

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
      source    = "54.183.64.135/32"

      tcp_options {
        source_port_range {
          "min" = 8443
          "max" = 8443
        }
      }
    },
    {
      protocol = "all"
      source   = "54.67.77.38/32"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "54.67.77.38/32"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "54.67.77.38/32"

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
      source    = "54.67.77.38/32"

      tcp_options {
        source_port_range {
          "min" = 8443
          "max" = 8443
        }
      }
    },
    {
      protocol = "all"
      source   = "54.67.15.170/32"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "54.67.15.170/32"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "54.67.15.170/32"

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
      source    = "54.67.15.170/32"

      tcp_options {
        source_port_range {
          "min" = 8443
          "max" = 8443
        }
      }
    },
    {
      protocol = "all"
      source   = "54.183.204.205/32"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "54.183.204.205/32"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "54.183.204.205/32"

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
      source    = "54.183.204.205/32"

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
      source   = "110.227.181.106/32"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "110.227.181.106/32"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "110.227.181.106/32"

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
      source    = "110.227.181.106/32"

      tcp_options {
        source_port_range {
          "min" = 8443
          "max" = 8443
        }
      }
    },
    {
      protocol = "all"
      source   = "129.213.97.17/32"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "129.213.97.17/32"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "129.213.97.17/32"

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
      source    = "129.213.97.17/32"

      tcp_options {
        source_port_range {
          "min" = 8443
          "max" = 8443
        }
      }
    },
    {
      protocol = "all"
      source   = "106.215.111.178/32"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "106.215.111.178/32"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "106.215.111.178/32"

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
      source    = "106.215.111.178/32"

      tcp_options {
        source_port_range {
          "min" = 8443
          "max" = 8443
        }
      }
    },
    {
      protocol = "all"
      source   = "60.243.219.35/32"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "60.243.219.35/32"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "60.243.219.35/32"

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
      source    = "60.243.219.35/32"

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
    {
      protocol = "all"
      source   = "129.213.75.25/32"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "129.213.75.25/32"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "129.213.75.25/32"

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
      source    = "129.213.75.25/32"

      tcp_options {
        source_port_range {
          "min" = 8443
          "max" = 8443
        }
      }
    },
    {
      protocol = "all"
      source   = "129.213.185.21/32"
    },
    {
      protocol  = "6"
      stateless = true
      source    = "129.213.185.21/32"

      tcp_options {
        "min" = 443
        "max" = 443
      }
    },
    {
      protocol  = "6"
      stateless = true
      source    = "129.213.185.21/32"

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
      source    = "129.213.185.21/32"

      tcp_options {
        source_port_range {
          "min" = 8443
          "max" = 8443
        }
      }
    }
  ]
}
