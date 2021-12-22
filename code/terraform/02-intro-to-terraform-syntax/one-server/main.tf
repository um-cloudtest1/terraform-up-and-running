terraform {
  required_version = ">= 0.14.9"
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
  region  = "us-west-2"  # Changed
}

resource "aws_instance" "example" {
  #ami           = "ami-0c55b159cbfafe1f0"
  ami           = "ami-830c94e3"  # Changed from above
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-example"
  }
}

