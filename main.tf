terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "eu-west-2"

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

resource "aws_iam_user" "nice_account" {
  name = "NiceAccount"
}

resource "aws_instance" "objective_complete" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.large"

  tags = {
    Name = "ObjectiveComplete"
  }
}
