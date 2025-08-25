/******************************************
	Connection Profiles configuration
 *****************************************/
resource "google_datastream_connection_profile" "postgres_profile" {
  project               = var.project
  location              = var.location
  display_name          = var.postgres_connection_profile_name
  connection_profile_id = var.postgres_connection_profile_name

  postgresql_profile {
    port     = var.postgresql_profile.port
    hostname = var.postgresql_profile.hostname
    username = var.postgresql_profile.username
    password = var.postgresql_profile.password
    database = var.postgresql_profile.database
  }
}

resource "google_datastream_connection_profile" "bigquery_profile" {
  project               = var.project
  location              = var.location
  display_name          = var.bigquery_connection_profile_name
  connection_profile_id = var.bigquery_connection_profile_name

  bigquery_profile {}
}
