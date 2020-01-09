variable "name" {
  default = "pcx"
  type    = string
}

variable "peer_owner_id" {
  type = string
}

variable "peer_region" {
  type = string
}

variable "peer_vpc_id" {
  type = string
}

variable "tags" {
  default = {}
  type    = map(string)
}

variable "vpc_id" {
  type = string
}
