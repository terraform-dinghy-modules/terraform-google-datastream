/******************************************
	Stream configuration
 *****************************************/
resource "google_datastream_stream" "stream" {
  project       = var.project
  location      = var.location
  stream_id     = var.stream_name
  display_name  = var.stream_name
  desired_state = "RUNNING"

  source_config {
    source_connection_profile = var.postgres_profile_id
    postgresql_source_config {}
  }

  destination_config {
    destination_connection_profile = var.bigquery_profile_id
    bigquery_destination_config {}
  }
}
