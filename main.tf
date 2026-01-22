provider "aws" {
  region = "eu-west-2"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

variable "env" {
  description = "Environment name (dev or prd)"
  type        = string
}

resource "aws_vpc" "name" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name         = "My VPC for Terraform Demo ${env}"
    Environment  = var.env
    Owner        = "Paul"
    Anotherowner = "Ciprian"
  }
}