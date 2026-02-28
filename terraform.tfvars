hub_profile   = "hub"
spoke_profile = "spoke"

region        = "us-east-1"
region_short  = "apse2"
project       = "oceania"

common_tags = {
  Owner       = "NetworkTeam"
  Environment = "shared"
}


vpcs = {
  hub1 = {
    cidr  = "10.206.16.0/20"
    tier  = "hub"
    index = 1
  }
}

/*
  hub2 = {
    cidr  = "10.207.16.0/20"
    tier  = "hub"
    index = 2
  }
}

*/

hub_subnets = {
  mgmt1 = {
    cidr        = "10.206.16.128/27"
    az          = "us-east-1a"
    subnet_type = "mgmt"
    network_type = "pri"
    index       = 1
  }

  mgmt2 = {
    cidr        = "10.206.16.160/27"
    az          = "us-east-1b"
    subnet_type = "mgmt"
    network_type = "pri"
    index       = 2
  }


  tgw1 = {
    cidr        = "10.206.16.0/27"
    az          = "us-east-1a"
    subnet_type = "tgw"
    network_type = "pri"
    index       = 1
  }

 tgw2 = {
    cidr        = "10.206.16.32/27"
    az          = "us-east-1b"
    subnet_type = "tgw"
    network_type = "pri"
    index       = 2
  }

ad1 = {
    cidr        = "10.206.16.64/27"
    az          = "us-east-1a"
    subnet_type = "ad"
    network_type = "pri"
    index       = 1
  }

  ad2 = {
    cidr        = "10.206.16.96/27"
    az          = "us-east-1b"
    subnet_type = "ad"
    network_type = "pri"
    index       = 2
  }

mgn1 = {
    cidr        = "10.206.16.192/27"
    az          = "us-east-1a"
    subnet_type = "mgn"
    network_type = "pri"
    index       = 1
  }

  mgn2 = {
    cidr        = "10.206.16.224/27"
    az          = "us-east-1b"
    subnet_type = "mgn"
    network_type = "pri"
    index       = 2
  }

  shrdapp1 = {
    cidr        = "10.206.17.0/26"
    az          = "us-east-1a"
    subnet_type = "shrdapp"
    network_type = "pri"
    index       = 1
  }


}