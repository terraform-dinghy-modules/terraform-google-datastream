# Terraform Stream Module

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| project | The ID of the project in which the resource belongs. | `string` | n/a | yes |
| location | The name of the location this private connection is located in. | `string` | n/a | yes |
| stream\_name | The stream identifier. | `string` | n/a | yes |
| postgres\_profile\_id | The ID of the Postgres Connection Profile being created. | `string` | n/a | yes |
| bigquery\_profile\_id | The ID of the Bigquery Connection Profile being created. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| stream\_id | The ID of the Stream being created. |
| stream\_name | The name of the Stream being created. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->