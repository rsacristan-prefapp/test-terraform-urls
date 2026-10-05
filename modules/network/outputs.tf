output "network_id" {
  description = "Identifier of the created network"
  value       = local.network_id
}

output "cidr_block" {
  description = "The network CIDR block"
  value       = var.cidr_block
}
