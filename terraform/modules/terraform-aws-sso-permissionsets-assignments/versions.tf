# © 2024 Amazon Web Services, Inc. or its affiliates. All Rights Reserved.
# This AWS Content is provided subject to the terms of the AWS Customer Agreement available at
# http://aws.amazon.com/agreement or other written agreement between Customer and either
# Amazon Web Services, Inc. or Amazon Web Services EMEA SARL or both.


terraform {
  # A provider requirement consists of a local name (aws), 
  # source location, and a version constraint. 
  required_providers {
    aws = {
      # Declaring the source location/address where Terraform can download plugins
      source = "hashicorp/aws"
      # Declaring the version of aws provider as greater than 3.70.0
      version = ">= 3.70.0"
    }
  }

  required_version = ">= 1.5.0"
}
