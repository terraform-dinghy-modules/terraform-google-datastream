variable "project" {
  type        = string
  description = "The ID of the project in which the resource belongs."
}

variable "location" {
  type        = string
  description = "The name of the location this private connection is located in."
}

variable "private_connection_name" {
  type        = string
  description = "The private connectivity identifier."
}

variable "vpc_peering_config" {
  type = object({
    vpc    = string
    subnet = string
  })
  description = "The VPC Peering configuration is used to create VPC peering between Datastream and the consumer's VPC."
}

variable "postgres_connection_profile_name" {
  type        = string
  description = "The postgres connection profile identifier."
}

variable "bigquery_connection_profile_name" {
  type        = string
  description = "The bigquery connection profile identifier."
}

variable "postgresql_profile" {
  type = object({
    port     = number
    hostname = string
    username = string
    password = string
    database = string
  })
  description = "PostgreSQL database profile."
}

variable "stream_name" {
  type        = string
  description = "The stream identifier."
}
