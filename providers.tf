terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Default provider (optional – not used directly)
provider "aws" {
  region = var.region
}

# HUB Account Provider
provider "aws" {
  alias   = "hub"
  profile = var.hub_profile
  region  = var.region
}

# SPOKE Account Provider
provider "aws" {
  alias   = "spoke"
  profile = var.spoke_profile
  region  = var.region
}

/*

provider "aws" {
  alias  = "hub"
  region = var.region

  assume_role {
    role_arn = "arn:aws:iam::123456789012:role/TerraformHubRole"
  }
}

*/