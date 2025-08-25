# Terraform Private Connectivity Module

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| project | The ID of the project in which the resource belongs. | `string` | n/a | yes |
| location | The name of the location this private connection is located in. | `string` | n/a | yes |
| private\_connection\_name | The private connectivity identifier. | `string` | n/a | yes |
| vpc\_peering\_config | The VPC Peering configuration is used to create VPC peering between Datastream and the consumer's VPC. | <pre>list(object({<br>  vpc    = string<br>  subnet = string<br>}))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| connection\_id | The ID of the Private Connectivity being created. |
| connection\_name | The name of the Private Connectivity being created. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->