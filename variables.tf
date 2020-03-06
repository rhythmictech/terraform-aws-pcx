variable "name" {
  default     = "pcx"
  description = "Name of peering connection resource"
  type        = string
}

variable "peer_owner_id" {
  description = "PCX Peer Owner Account ID"
  type        = string
}

variable "peer_region" {
  description = "PCX Peer Region"
  type        = string
}

variable "peer_vpc_id" {
  description = "PCX Peer VPC"
  type        = string
}

variable "tags" {
  default     = {}
  description = "Tags to add to supported resources"
  type        = map(string)
}

variable "vpc_id" {
  description = "PCX VPC"
  type        = string
}
