module "vcn" {
  source  = "oracle-terraform-modules/vcn/oci"
  version = "3.2.0"
  # insert required variables here
  compartment_id = var.compartment_id
  vcn_name   = var.vcn_name
  label_prefix = var.label_prefix == "none" ? "" : var.label_prefix
  create_internet_gateway = true
  create_nat_gateway = true
  create_service_gateway = true
  vcn_cidrs = var.vcn_cidrs
}