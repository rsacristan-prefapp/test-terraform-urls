# Test Terraform module used to exercise external module URLs in the
# Firestartr "Infrastructure Resource" (TFWorkspace) creation wizard.
#
# It intentionally creates no real cloud resources — it only exposes variables
# and outputs so the backend module-schema endpoint can parse it without
# provider credentials.

locals {
  common_tags = merge(
    var.tags,
    {
      environment = var.environment
      managed-by  = "test-terraform-urls"
    },
  )
}

module "network" {
  source = "./modules/network"

  name        = var.name
  environment = var.environment
  region      = var.region
  cidr_block  = var.cidr_block
}
