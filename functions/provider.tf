terraform {
  required_providers {
    http = {
      source  = "hashicorp/http"
      version = "3.5.0"
    }
    aws = {
      source = "hashicorp/aws"
      version = "6.48.0"
    }
  }
  backend "s3" {
    bucket = "manoharmotam-terraform-state"
    key = "functions/func-demo.tfstate"
    use_lockfile = true
    region = "us-east-1"
    encrypt = true
  }
}

provider "aws" {
  region = "us-east-1"
}