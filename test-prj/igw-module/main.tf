module "igw" {
  source           = "E:/stack-builder/test-prj/base-mods/internet_gateway"
  compartment_ocid = "${var.compartment_ocid}"
  igw_display_name = "${var.igw_display_name}"
  vcn_ocid         = "${var.vcn_ocid}"
  tags = "${var.tags}"
}

