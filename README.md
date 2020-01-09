# terraform-aws-pcx
[![](https://github.com/rhythmictech/terraform-aws-pcx/workflows/check/badge.svg)](https://github.com/rhythmictech/terraform-aws-pcx/actions)

Manage a peering connection resource

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| name |  | string | `"pcx"` | no |
| peer\_owner\_id |  | string | n/a | yes |
| peer\_region |  | string | n/a | yes |
| peer\_vpc\_id |  | string | n/a | yes |
| tags |  | map(string) | `{}` | no |
| vpc\_id |  | string | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| pcx\_id | The ID of the VPC |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
