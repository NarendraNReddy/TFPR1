terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.49.0"
    }
  }
}

#provides authentication here. 
# IAM user keys can be pasted. But not recommended
#AWS CLI
provider "aws" {
  region="us-east-1"
}