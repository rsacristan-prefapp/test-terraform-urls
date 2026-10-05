output "name" {
  description = "The resource name"
  value       = var.name
}

output "endpoint" {
  description = "A fake endpoint derived from the inputs"
  value       = "${var.name}.${var.region}.test.local"
}

output "common_tags" {
  description = "The merged tag set applied to the resource"
  value       = local.common_tags
}

output "password_fingerprint" {
  description = "Sensitive output example"
  value       = length(var.admin_password)
  sensitive   = true
}
