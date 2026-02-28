variable "project" {
  type = string
}

variable "region" {
  type = string
}

variable "region_short" {
  type = string
}

variable "hub_profile" {
  type = string
}

variable "spoke_profile" {
  type = string
}

variable "vpcs" {
  type = map(object({
    cidr  = string
    tier  = string
    index = number
  }))
}

variable "hub_subnets" {
  type = map(object({
    cidr        = string
    az          = string
    subnet_type = string
    network_type = string
    index       = number
  }))
}

variable "common_tags" {
  type = map(string)
}