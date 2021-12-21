terraform {

# provider "aws" {
#   region = "us-west-2"
# 
#   # Allow any 2.x version of the AWS provider
#   #version = "~> 2.0"  # moved to required_providers
# }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.0"
    }
  }
  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

resource "aws_instance" "example" {
  #ami           = "ami-0c55b159cbfafe1f0"
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-example"
  }
}

