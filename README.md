# terraform-aws-pcx

[![tflint](https://github.com/rhythmictech/terraform-aws-pcx/workflows/tflint/badge.svg?branch=master&event=push)](https://github.com/rhythmictech/terraform-aws-pcx/actions?query=workflow%3Atflint+event%3Apush+branch%3Amaster)
[![tfsec](https://github.com/rhythmictech/terraform-aws-pcx/workflows/tfsec/badge.svg?branch=master&event=push)](https://github.com/rhythmictech/terraform-aws-pcx/actions?query=workflow%3Atfsec+event%3Apush+branch%3Amaster)
[![yamllint](https://github.com/rhythmictech/terraform-aws-pcx/workflows/yamllint/badge.svg?branch=master&event=push)](https://github.com/rhythmictech/terraform-aws-pcx/actions?query=workflow%3Ayamllint+event%3Apush+branch%3Amaster)
[![misspell](https://github.com/rhythmictech/terraform-aws-pcx/workflows/misspell/badge.svg?branch=master&event=push)](https://github.com/rhythmictech/terraform-aws-pcx/actions?query=workflow%3Amisspell+event%3Apush+branch%3Amaster)
[![pre-commit-check](https://github.com/rhythmictech/terraform-aws-pcx/workflows/pre-commit-check/badge.svg?branch=master&event=push)](https://github.com/rhythmictech/terraform-aws-pcx/actions?query=workflow%3Apre-commit-check+event%3Apush+branch%3Amaster)
<a href="https://twitter.com/intent/follow?screen_name=RhythmicTech"><img src="https://img.shields.io/twitter/follow/RhythmicTech?style=social&logo=twitter" alt="follow on Twitter"></a>


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
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.56.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_vpc_peering_connection.pcx](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_peering_connection) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Name of peering connection resource | `string` | `"pcx"` | no |
| <a name="input_peer_owner_id"></a> [peer\_owner\_id](#input\_peer\_owner\_id) | PCX Peer Owner Account ID | `string` | n/a | yes |
| <a name="input_peer_region"></a> [peer\_region](#input\_peer\_region) | PCX Peer Region | `string` | n/a | yes |
| <a name="input_peer_vpc_id"></a> [peer\_vpc\_id](#input\_peer\_vpc\_id) | PCX Peer VPC | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to add to supported resources | `map(string)` | `{}` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | PCX VPC | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_pcx_id"></a> [pcx\_id](#output\_pcx\_id) | The ID of the VPC |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects
* [Peering Connection Route Table Entry](https://github.com/rhythmictech/terraform-aws-pcx-route-cidr)
