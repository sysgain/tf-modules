module "igw-mod" {
  source           = "E:/stack-builder/test-prj/igw-module"
  compartment_ocid = "${var.compartment_ocid}"
  igw_display_name = "${var.igw_display_name}"
  vcn_ocid         = "${module.vcn-mod.vcn_ocid}"

  tags = {
    Owner = "Terraform"
  }

  # tenancy_ocid     = "${var.tenancy_ocid}"
  # user_ocid        = "${var.user_ocid}"
  # fingerprint      = "${var.fingerprint}"
  # private_key_path = "${var.private_key_path}"
  # region           = "${var.region[0]}"
  # image_id         = "${var.image_id[0]}"
}

module "vcn-mod" {
  source           = "E:/stack-builder/test-prj/vcn-module"
  compartment_ocid = "${var.compartment_ocid}"
  vcn_display_name = "${var.vcn_display_name}"
  vcn_cidr_block   = "${var.vcn_cidr_block}"
  vcn_dns_label    = "${var.vcn_dns_label}"

  tags = {
    Owner = "Terraform"
  }
}
