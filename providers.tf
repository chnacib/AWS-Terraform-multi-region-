provider "aws" {
    version = "~> 2.0"
    region = "us-east-2"
  
}

provider "aws" {
    alias = "us-east-1"
    version = "~> 2.0"
    region = "us-east-1"
  
}

