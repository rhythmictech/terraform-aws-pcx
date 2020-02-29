# terraform-aws-pcx
[![](https://github.com/rhythmictech/terraform-aws-pcx/workflows/check/badge.svg)](https://github.com/rhythmictech/terraform-aws-pcx/actions)

Create route table entries associated with a [Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html).

Example:

```
module "pcx" {
  source        = "git::https://github.com/rhythmictech/terraform-aws-pcx"
  name          = "SourceAccount-VPC<=>DescAccount-VPC"
  peer_owner_id = "0123456789012"
  peer_region   = "us-east-1"
  peer_vpc_id   = "vpc-01234567a"
  vpc_id        = module.vpc.vpc_id
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| name | Name of peering connection resource | string | `"pcx"` | no |
| peer\_owner\_id | PCX Peer Owner Account ID | string | n/a | yes |
| peer\_region | PCX Peer Region | string | n/a | yes |
| peer\_vpc\_id | PCX Peer VPC | string | n/a | yes |
| tags | Tags to add to supported resources | map(string) | `{}` | no |
| vpc\_id | PCX VPC | string | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| pcx\_id | The ID of the VPC |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects
* [Peering Connection Route Table Entry](https://github.com/rhythmictech/terraform-aws-pcx-route-cidr)
