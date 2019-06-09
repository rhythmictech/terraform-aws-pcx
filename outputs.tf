output "pcx_id" {
  description = "The ID of the VPC"
  value       = aws_vpc_peering_connection.pcx.id
}
