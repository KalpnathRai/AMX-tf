output "hub_vpc_ids" {
  description = "Hub VPC IDs"
  value       = module.hub_vpc.vpc_ids
}

output "hub_subnet_ids" {
  description = "Hub Subnet IDs"
  value       = module.hub_subnets.subnet_ids
}