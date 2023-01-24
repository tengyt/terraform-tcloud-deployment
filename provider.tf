terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

terraform {
  cloud {
    organization = "FusionIT"

    workspaces {
      name = "git-action-tengy"
    }
  }
}
