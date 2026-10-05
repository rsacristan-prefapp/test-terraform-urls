variable "name" {
  description = "Name of the network"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "region" {
  description = "Cloud region"
  type        = string
  default     = "eu-west-1"
}

variable "cidr_block" {
  description = "CIDR block for the network"
  type        = string
  default     = "10.0.0.0/16"
}

variable "dns_enabled" {
  description = "Whether DNS is enabled for the network"
  type        = bool
  default     = true
}
