terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.23.0"
    }
  }
}


provider "aws" {
  secret_key = var.aws_secret_key
  access_key = var.aws_access_key
  region     = "us-west-2"
}
