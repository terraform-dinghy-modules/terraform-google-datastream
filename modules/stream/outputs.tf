output "stream_id" {
  value       = google_datastream_stream.stream.id
  description = "The ID of the Stream being created."
}

output "stream_name" {
  value       = google_datastream_stream.stream.name
  description = "The name of the Stream being created."
}
