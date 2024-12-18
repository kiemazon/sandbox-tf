terraform {
  backend "s3" {
    bucket         = "kiemazon-terraform-state-bucket"
    key            = "terraform.tfstate"
    region         = "eu-west-2"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "eu-west-2"

  default_tags {
    tags = {
      iac_managed = "terraform"
    }
  }
}

resource "aws_instance" "app_server" {
  ami           = "ami-0acc77abdfc7ed5a6"
  instance_type = "t2.micro"

  tags = {
    Name = "sandboxTestInstance"
  }
}
