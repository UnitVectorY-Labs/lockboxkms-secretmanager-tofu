# Outputs for google_secret_manager_secret

output "secret_id" {
  description = "The identifier for the Secret resource."
  value       = google_secret_manager_secret.secret.id
}

output "secret_name" {
  description = "The resource name of the Secret."
  value       = google_secret_manager_secret.secret.name
}

output "secret_create_time" {
  description = "The time at which the Secret was created."
  value       = google_secret_manager_secret.secret.create_time
}

# Outputs for google_secret_manager_secret_version

output "secret_version_id" {
  description = "The identifier for the SecretVersion resource."
  value       = google_secret_manager_secret_version.secret_version.id
}

output "secret_version_name" {
  description = "The resource name of the SecretVersion."
  value       = google_secret_manager_secret_version.secret_version.name
}

output "secret_version" {
  description = "The version of the Secret."
  value       = google_secret_manager_secret_version.secret_version.version
}

output "secret_version_create_time" {
  description = "The time at which the SecretVersion was created."
  value       = google_secret_manager_secret_version.secret_version.create_time
}