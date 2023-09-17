terraform {
  required_version = "~> 1.1.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.74.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "my-ec2" {
  ami           = "ami-076754bea03bde973"
  instance_type = "t2.micro"
  tags = {
    "Name" = "My-EC2"
  }
}


