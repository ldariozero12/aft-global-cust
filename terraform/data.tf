# © 2024 Amazon Web Services, Inc. or its affiliates. All Rights Reserved.
# 
# This AWS Content is provided subject to the terms of the AWS Customer Agreement
# available at http://aws.amazon.com/agreement or other written agreement between
# Customer and either Amazon Web Services, Inc. or Amazon Web Services EMEA SARL or both.

data "aws_caller_identity" "current" {}

locals {
  account_id            = data.aws_caller_identity.current.account_id
  management_account_id = "741448940700"
  audit_account_id = "891612582626"
}
