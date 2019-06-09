locals {
  base_tags = {
    env       = var.env
    owner     = var.owner
    namespace = var.namespace
  }
}


resource "aws_vpc_peering_connection" "pcx" {

  peer_owner_id = var.peer_owner_id
  peer_vpc_id   = var.peer_vpc_id
  vpc_id        = var.vpc_id
  peer_region   = var.peer_region

  tags = merge(
    local.base_tags,
    var.additional_tags,
    map(
      "Name", var.name
    )
  )

}
