output "connection_id" {
  value       = google_datastream_private_connection.connection.id
  description = "The ID of the Private Connectivity being created."
}

output "connection_name" {
  value       = google_datastream_private_connection.connection.name
  description = "The name of the Private Connectivity being created."
}
