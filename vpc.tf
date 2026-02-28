module "hub_vpc" {
  source = "../modules/vpc"

  providers = {
    aws = aws.hub
  }

  vpcs         = var.vpcs
  project      = var.project
  region_short = var.region_short
  common_tags  = var.common_tags
}