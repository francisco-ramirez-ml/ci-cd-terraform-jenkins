terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.18.0"
    }
  }

  backend "s3" {
    bucket = "task-5-terraform-state"
    key = "terraform-states/tf-jenkins.tfstate"
    region = "us-west-2"
  }
}

provider "aws" {
  region = "us-west-2"
}
