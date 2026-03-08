terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.33.0" # Terraform AWS provider version
    }
  }
 backend "s3" {
    bucket   = "remote-state-mskdaws88s" # Replace with your bucket name
    key      = "roboshop-dev-sg-rules"
    region   = "us-east-1" # Replace with your desired region
    encrypt  = true                               # Encrypt state file at rest
    use_lockfile  = true
  }
  
}

provider "aws" {
  region = "us-east-1"
}