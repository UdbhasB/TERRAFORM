terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "ap-south-1"
}

resource "aws_default_vpc" "default" {
  tags = {
    Name = "default_vpc"
  } 
}

resource "aws_instance" "ud_server" {
  ami           = "ami-0e35ddab05955cf57"
  instance_type = "t2.micro"

 # tags = {
  #  Name = "ud_server"
 # }
}