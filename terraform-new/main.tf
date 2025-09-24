terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # backend "s3" {
  #   bucket  = "terraform-state-bucket"
  #   key     = "state/terraform_state.tfstate"
  #   region  = "us-east-1"
  #   profile = "node-app"
  # }
}

provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  # profile    = "node-app"
}
