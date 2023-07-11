terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.6.2"
    }
  } 
  backend "s3" {
    bucket = "terraform-s3-remoteconf"
    key = "vpc"
    region = "ap-south-1"
    dynamodb_table = "timing-lock-terraform"
  }
}
provider "aws" {
  # Configuration options
  region = "ap-south-1"
}