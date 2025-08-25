variable "project" {
  type        = string
  description = "The ID of the project in which the resource belongs."
}

variable "location" {
  type        = string
  description = "The name of the location this private connection is located in."
}

variable "stream_name" {
  type        = string
  description = "The stream identifier."
}

variable "postgres_profile_id" {
  type        = string
  description = "The ID of the Postgres Connection Profile being created."
}

variable "bigquery_profile_id" {
  type        = string
  description = "The ID of the Bigquery Connection Profile being created."
}
