/******************************************
	Private Connectivity configuration
 *****************************************/
module "connection" {
  source                  = "./modules/connectivity"
  project                 = var.project
  location                = var.location
  vpc_peering_config      = var.vpc_peering_config
  private_connection_name = var.private_connection_name
}

/******************************************
	Connection Profiles configuration
 *****************************************/
module "profiles" {
  source                           = "./modules/profiles"
  project                          = var.project
  location                         = var.location
  postgresql_profile               = var.postgresql_profile
  postgres_connection_profile_name = var.postgres_connection_profile_name
  bigquery_connection_profile_name = var.bigquery_connection_profile_name
}

/******************************************
	Stream configuration
 *****************************************/
module "stream" {
  source              = "./modules/stream"
  project             = var.project
  location            = var.location
  stream_name         = var.stream_name
  postgres_profile_id = module.profiles.postgres_profile_id
  bigquery_profile_id = module.profiles.bigquery_profile_id
}
