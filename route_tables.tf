module "hub_private_rt" {
  source = "../modules/route_tables"

  vpc_id = module.hub_vpc.vpc_ids["hub"]
  name   = "hub-private-rt"

  subnet_ids = module.hub_subnets.private_subnet_ids

  routes = {}
}