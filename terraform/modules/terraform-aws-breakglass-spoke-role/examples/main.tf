# © 2024 Amazon Web Services, Inc. or its affiliates. All Rights Reserved.  
# This AWS Content is provided subject to the terms of the AWS Customer Agreement available at 
# http://aws.amazon.com/agreement or other written agreement between Customer and either
# Amazon Web Services, Inc. or Amazon Web Services EMEA SARL or both.

module "terraform-aws-breakglass-spoke-role" {
  source = ".."

  breakglass_account_id = "123456789012"
  breakglass_user_name  = "breakglass-user"
  breakglass_role_name  = "breakglass-role"
}

provider "aws" {
  region = "eu-west-1"
}

terraform {
  required_version = ">= 1.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
