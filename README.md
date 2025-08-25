# Terraform Datastream Module

This module makes it easy to set up a new CDC Datastream in GCP.

It supports creating:

- Private Connectivity
- Connection Profiles
- Stream (CDC)

[Sub modules](https://github.com/terraform-dinghy-modules/terraform-google-datastream/tree/main/modules) are provided for creating individual private connection, connection profiles, stream. See the [modules](https://github.com/terraform-dinghy-modules/terraform-google-datastream/tree/main/modules) directory for the various sub modules usage.
- [private connectivity](https://github.com/terraform-dinghy-modules/terraform-google-datastream/tree/main/modules/connectivity)
- [connection profiles](https://github.com/terraform-dinghy-modules/terraform-google-datastream/tree/main/modules/profiles/)
- [stream](https://github.com/terraform-dinghy-modules/terraform-google-datastream/tree/main/modules/stream)

Then perform the following commands on the root folder:

- `terraform init` to get the plugins
- `terraform plan` to see the infrastructure plan
- `terraform apply` to apply the infrastructure build
- `terraform destroy` to destroy the built infrastructure

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| project | The ID of the project in which the resource belongs. | `string` | n/a | yes |
| location | The name of the location this private connection is located in. | `string` | n/a | yes |
| private\_connection\_name | The private connectivity identifier. | `string` | n/a | yes |
| vpc\_peering\_config | The VPC Peering configuration is used to create VPC peering between Datastream and the consumer's VPC. | <pre>list(object({<br>  vpc    = string<br>  subnet = string<br>}))</pre> | n/a | yes |
| postgres\_connection\_profile\_name | The postgres connection profile identifier. | `string` | n/a | yes |
| bigquery\_connection\_profile\_name | The bigquery connection profile identifier. | `string` | n/a | yes |
| postgresql\_profile | PostgreSQL database profile. | <pre>list(object({<br>  port     = number<br>  hostname = string<br>  username = string<br>  password = string<br>  database = string<br>}))</pre> | n/a | yes |
| stream\_name | The stream identifier. | `string` | n/a | yes |
| postgres\_profile\_id | The ID of the Postgres Connection Profile being created. | `string` | n/a | yes |
| bigquery\_profile\_id | The ID of the Bigquery Connection Profile being created. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| connection\_id | The ID of the Private Connectivity being created. |
| connection\_name | The name of the Private Connectivity being created. |
| postgres\_profile\_id | The ID of the Postgres Connection Profile being created. |
| postgres\_profile\_name | The name of the Postgres Connection Profile being created. |
| bigquery\_profile\_id | The ID of the Bigquery Connection Profile being created. |
| bigquery\_profile\_name | The name of the Bigquery Connection Profile being created. |
| stream\_id | The ID of the Stream being created. |
| stream\_name | The name of the Stream being created. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Requirements
### Installed Software
- [Terraform](https://www.terraform.io/downloads.html) >= 1.3

### Enable API's
In order to operate with the Service Account you must activate the following API on the project where the Service Account was created:

- Vertex AI API - aiplatform.googleapis.com
- BigQuery Reservation API - bigquery.googleapis.com
- BigQuery Connection API - bigqueryconnection.googleapis.com
