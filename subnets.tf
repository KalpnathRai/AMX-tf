module "hub_subnets" {
  source = "../modules/subnets"

  providers = {
    aws = aws.hub
  }

  vpc_ids      = module.hub_vpc.vpc_ids
  subnets      = var.hub_subnets
  project      = var.project
  region_short = var.region_short
  common_tags  = var.common_tags
}