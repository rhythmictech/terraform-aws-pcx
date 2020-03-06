locals {
  tags = merge(var.tags,
    map(
      "Name", var.name
    )
  )
}

resource "aws_vpc_peering_connection" "pcx" {
  peer_owner_id = var.peer_owner_id
  peer_region   = var.peer_region
  peer_vpc_id   = var.peer_vpc_id
  tags          = local.tags
  vpc_id        = var.vpc_id


}
