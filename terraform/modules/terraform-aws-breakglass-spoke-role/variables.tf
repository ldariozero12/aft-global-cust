# © 2024 Amazon Web Services, Inc. or its affiliates. All Rights Reserved.
# This AWS Content is provided subject to the terms of the AWS Customer Agreement available at
# http://aws.amazon.com/agreement or other written agreement between Customer and either
# Amazon Web Services, Inc. or Amazon Web Services EMEA SARL or both.

variable "breakglass_account_id" {
  type        = string
  description = "Account ID where the breakglass user is configured"
}

variable "breakglass_user_name" {
  type        = string
  description = "Name of the IAM user with the grant to assume the breakglass role in target accounts in case of SSO outage"
}

variable "breakglass_role_name" {
  type        = string
  description = "Name of the IAM role with admin privileges created in all accounts used in case of SSO outage"
}
