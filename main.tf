provider "google" {
  project = var.project_id
}

# Load in the existing KMS key that will be used to decrypt the secret

data "google_kms_key_ring" "my_key_ring" {
  project  = var.project_id
  name     = var.key_ring_name
  location = var.key_ring_location
}

data "google_kms_crypto_key" "my_crypto_key" {
  name     = var.key_name
  key_ring = data.google_kms_key_ring.my_key_ring.id
}

# Decrypt the encrypted value

data "google_kms_secret" "decrypted_value" {
  crypto_key = data.google_kms_crypto_key.my_crypto_key.id
  ciphertext = var.encrypted_value
}

# Create the secret in Secret Manager

resource "google_secret_manager_secret" "secret" {
  secret_id = var.secret_name
  project   = var.project_id
  replication {
    auto {}
  }
}

# Create the secret version in Secret Manager

resource "google_secret_manager_secret_version" "secret_version" {
  secret      = google_secret_manager_secret.secret.id
  secret_data = data.google_kms_secret.decrypted_value.plaintext
  deletion_policy = var.deletion_policy
}
