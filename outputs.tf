output "connection_id" {
  value       = module.connection.connection_id
  description = "The ID of the Private Connectivity being created."
}

output "connection_name" {
  value       = module.connection.connection_name
  description = "The name of the Private Connectivity being created."
}

output "postgres_profile_id" {
  value       = module.profiles.postgres_profile_id
  description = "The ID of the Postgres Connection Profile being created."
}

output "postgres_profile_name" {
  value       = module.profiles.postgres_profile_name
  description = "The name of the Postgres Connection Profile being created."
}

output "bigquery_profile_id" {
  value       = module.profiles.bigquery_profile_id
  description = "The ID of the Bigquery Connection Profile being created."
}

output "bigquery_profile_name" {
  value       = module.profiles.bigquery_profile_name
  description = "The name of the Bigquery Connection Profile being created."
}

output "stream" {
  value       = module.stream.stream_id
  description = "The ID of the Stream being created."
}

output "stream" {
  value       = module.stream.stream_name
  description = "The name of the Stream being created."
}
