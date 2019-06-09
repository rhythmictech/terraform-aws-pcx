variable "region" {
  type = string
}

variable "name" {
  default = "pcx"
  type    = string
}

variable "namespace" {
  type = string
}

variable "env" {
  type = string
}

variable "owner" {
  type = string
}

variable "additional_tags" {
  default = {}
  type    = map(string)
}

variable "peer_owner_id" {
  type = string
}

variable "peer_vpc_id" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "peer_region" {
  type = string
}

