variable "project_id" {
  description = "The GCP project ID where the secret will be stored."
  type        = string
}

variable "key_ring_name" {
  description = "The name of the key ring to create."
  type        = string
}

variable "key_ring_location" {
  description = "The location of the key ring to create."
  type        = string
}

variable "key_name" {
  description = "The name of the key to create."
  type        = string
}

variable "secret_id" {
  description = "The id of the secret in Secret Manager to store the secret."
  type        = string
}

variable "encrypted_value" {
  description = "The symmetrically encrypted value to store in Secret Manager."
  type        = string
}

variable "deletion_policy" {
  description = "The deletion policy for the secret version. Setting ABANDON allows the resource to be abandoned rather than deleted. Setting DISABLE allows the resource to be disabled rather than deleted. Default is DELETE. Possible values are: DELETE, DISABLE, ABANDON."
  type        = string
  default     = "DELETE"

  validation {
    condition     = contains(["DELETE", "DISABLE", "ABANDON"], var.deletion_policy)
    error_message = "The deletion_policy must be one of DELETE, DISABLE, or ABANDON."
  }
}
