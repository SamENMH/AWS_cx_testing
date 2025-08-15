terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6.1"
    }
        tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.5"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.3.4"
    }
  }
  required_version = ">= 1.5.7"

  cloud {
    organization = "SamHTesting"

    workspaces {
      name = "AWS_Testing"
    }
  }
}
