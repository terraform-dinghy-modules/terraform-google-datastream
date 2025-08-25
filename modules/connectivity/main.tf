/******************************************
	Private Connectivity configuration
 *****************************************/
resource "google_datastream_private_connection" "connection" {
  project               = var.project
  location              = var.location
  display_name          = var.private_connection_name
  private_connection_id = var.private_connection_name

  vpc_peering_config {
    vpc    = var.vpc_peering_config.vpc
    subnet = var.vpc_peering_config.subnet
  }
}
