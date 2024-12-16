terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.73.0"
    }
  }

  backend "s3" {
    bucket = "91s-remote-state"
    key    = "expense-vpc"
    region = "us-east-1"
    dynamodb_table = "91s-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}