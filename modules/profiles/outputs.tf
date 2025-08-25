output "postgres_profile_id" {
  value       = google_datastream_connection_profile.postgres_profile.id
  description = "The ID of the Postgres Connection Profile being created."
}

output "postgres_profile_name" {
  value       = google_datastream_connection_profile.postgres_profile.name
  description = "The name of the Postgres Connection Profile being created."
}

output "bigquery_profile_id" {
  value       = google_datastream_connection_profile.bigquery_profile.id
  description = "The ID of the Bigquery Connection Profile being created."
}

output "bigquery_profile_name" {
  value       = google_datastream_connection_profile.bigquery_profile.name
  description = "The name of the Bigquery Connection Profile being created."
}
