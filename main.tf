terraform { 
    required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = "~> 5.0"
        }
  }
  cloud { 
    
    organization = "{organization名}" 

    workspaces { 
      name = "{workspaces名}" 
    } 
  } 
}

provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_s3_bucket" "imported" {
  bucket = "sample-import-bucket"
}
