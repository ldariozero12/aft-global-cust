# © 2024 Amazon Web Services, Inc. or its affiliates. All Rights Reserved.
# 
# This AWS Content is provided subject to the terms of the AWS Customer Agreement
# available at http://aws.amazon.com/agreement or other written agreement between
# Customer and either Amazon Web Services, Inc. or Amazon Web Services EMEA SARL or both.

terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {}

module "example" {
  source = "./.."

  account_id = "123456789012"
  ps_group_assignments = {
    global-administrator = ["AD_Global_Admins"]
    global-network-admin = ["AD_Global_Network_Admins"]
    global-view-only     = ["AD_Global_Viewer"]
  }
}
