module "vcn" {
  source  = "oracle-terraform-modules/vcn/oci"
  version = "3.2.0"
  # insert required variables here
  compartment_id = var.compartment_id
  display_name   = var.label_prefix == "none" ? var.vcn_name : "${var.label_prefix}-${var.vcn_name}"
}