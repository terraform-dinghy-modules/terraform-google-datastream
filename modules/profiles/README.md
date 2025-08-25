# Terraform Connection Profiles Module

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| project | The ID of the project in which the resource belongs. | `string` | n/a | yes |
| location | The name of the location this private connection is located in. | `string` | n/a | yes |
| postgres\_connection\_profile\_name | The postgres connection profile identifier. | `string` | n/a | yes |
| bigquery\_connection\_profile\_name | The bigquery connection profile identifier. | `string` | n/a | yes |
| postgresql\_profile | PostgreSQL database profile. | <pre>list(object({<br>  port     = number<br>  hostname = string<br>  username = string<br>  password = string<br>  database = string<br>}))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| postgres\_profile\_id | The ID of the Postgres Connection Profile being created. |
| postgres\_profile\_name | The name of the Postgres Connection Profile being created. |
| bigquery\_profile\_id | The ID of the Bigquery Connection Profile being created. |
| bigquery\_profile\_name | The name of the Bigquery Connection Profile being created. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->