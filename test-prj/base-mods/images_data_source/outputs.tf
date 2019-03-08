output "image_ocid" {
  value = "${lookup(data.oci_core_images.imageOCID.images[4], "id")}"
}
