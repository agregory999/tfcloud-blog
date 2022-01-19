provider "oci" {
  fingerprint          = var.api_fingerprint
  private_key          = var.api_private_key
#  private_key_path     = var.api_private_key_path
  region               = var.region
  tenancy_ocid         = var.tenancy_id
  user_ocid            = var.user_id
}

# provider identity parameters
variable "api_fingerprint" {
  description = "fingerprint of oci api private key"
  type        = string
}

variable "api_private_key" {
  description = "oci api private key"
  type        = string
  sensitive = true
}

variable "tenancy_id" {
  description = "tenancy id where to create the sources"
  type        = string
}

variable "user_id" {
  description = "id of user that terraform will use to create the resources"
  type        = string
}