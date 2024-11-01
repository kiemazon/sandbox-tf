provider "aws" {
  region  = "eu-west-2"

  default_tags {
    tags = {
      iac_managed = "terraform"
    }
  }
}
