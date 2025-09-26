terraform { 
    required_version = ">= 1.5"
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

import {
  to = aws_s3_bucket.imported
  id = "{作成したbucket名}"
}
