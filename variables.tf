variable "name" {
  description = "Name of the test resource"
  type        = string
}

variable "environment" {
  description = "Deployment environment (dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "region" {
  description = "Cloud region"
  type        = string
  default     = "eu-west-1"
}

variable "cidr_block" {
  description = "CIDR block for the test network"
  type        = string
  default     = "10.0.0.0/16"
}

variable "instance_count" {
  description = "Number of test instances (test-only, nothing is created)"
  type        = number
  default     = 1
}

variable "enable_monitoring" {
  description = "Whether monitoring is enabled"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags applied to the test resource"
  type        = map(string)
  default     = {}
}

variable "admin_password" {
  description = "Sensitive admin password (test-only)"
  type        = string
  sensitive   = true
}
