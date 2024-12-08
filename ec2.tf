terraform {

  required_providers {

    aws = {

      source  = "hashicorp/aws"

      version = "~> 5.0"

    }

  }

}

 

# Configure the AWS Provider

provider "aws" {

  region = "us-east-1"
  profile = "leo"
  

  assume_role {

    role_arn = "arn:aws:iam::471112668079:role/jenkinsRoleadmin"

  }

 

}



resource "aws_instance" "web" {
  ami           = "ami-0166fe664262f664c"
  instance_type = "t3.micro"

  tags = {
    Name = "leo"
  }
}