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
