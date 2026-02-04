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

# resource "aws_sns_topic" "pipeline-3" {
#   name = "pipeline-3-topic-${var.env}"
#   tags = {
#     Environment = var.env
#     pipeline    = "pipeline-3-${var.env}"
#     owner       = "team-c-${var.env}"
#     deployed    = "terraform"
#   }
# }