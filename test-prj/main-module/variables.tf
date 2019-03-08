variable "tenancy_ocid" {
  default = "ocid1.tenancy.oc1..aaaaaaaaw6jqoxikimorivt324bb2shhnlz5hvdf4ubh54jbkfyzx5gwacca"
}

variable "user_ocid" {
  default = "ocid1.user.oc1..aaaaaaaauvq6zfluukpjsbw2vjeffpkltea56umhh6nsvomkcsjex46aeahq"
}

variable "fingerprint" {
  default = "45:34:0b:a9:a1:54:28:04:09:ae:2e:3b:2c:bc:b6:82"
}

variable "private_key_path" {
  default = "E:/stack-builder/test-prj/oci-key/oci_api_key_spl10.pem"
}

variable "compartment_ocid" {
  default = "ocid1.compartment.oc1..aaaaaaaazwuxxggw6cxovozhwlyaeayxuezjlw6gwcqngzelfpcdmw6sltoq"
}

variable "region" {
  default = ["us-phoenix-1", "us-ashburn-1", "eu-frankfurt-1", "uk-london-1"]
}

variable "image_id" {
  type = "map"

  default = {
    us-phoenix-1   = "ocid1.image.oc1.phx.aaaaaaaakbj52337rvtttqlxdwcy2woyzbx6oos3fdhfgfo652yc2tdzm7oq"
    us-ashburn-1   = "ocid1.image.oc1.iad.aaaaaaaa445ixnfsh47sd7u3bqurourvzlfzefolvob7ojqsis3r53xddbia"
    eu-frankfurt-1 = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaam7vdwlyxw3yka6d4jjwuy54k6er2zcv4tb2rdkjjvwlg2yag2xfa"
    uk-london-1    = "ocid1.image.oc1.uk-london-1.aaaaaaaan6kqoyld5fbh3v5vknxon76fsa5e7efexsazo3llwu3cksujj2qa"
  }
}

variable "igw_display_name" {
  default = "test-igw"
}

variable "vcn_display_name" {
  default = "test-vcn"
}

variable "vcn_cidr_block" {
  default = "10.0.0.0/16"
}

variable "vcn_dns_label" {
  default = "testvcn"
}
