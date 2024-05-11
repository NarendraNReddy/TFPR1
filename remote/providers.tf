terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.49.0"
    }
  }
   backend "s3" {
    bucket = "daws78s-nnr5-remote.online"
    key    = "remote-state-demo5"
    region = "us-east-1"
    dynamodb_table = "daws78s-nnr5-remote.lock"
  }
}

#provides authentication here. 
# IAM user keys can be pasted. But not recommended
#AWS CLI
provider "aws" {
  region="us-east-1"
}