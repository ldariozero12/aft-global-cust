# © 2024 Amazon Web Services, Inc. or its affiliates. All Rights Reserved.  
# This AWS Content is provided subject to the terms of the AWS Customer Agreement available at 
# http://aws.amazon.com/agreement or other written agreement between Customer and either
# Amazon Web Services, Inc. or Amazon Web Services EMEA SARL or both.

# This module creates the SSO assignments for the global permissions
module "global-sso-assignments" {
  source = "./modules/terraform-aws-sso-permissionsets-assignments"
  count  = local.account_id != local.management_account_id ? 1 : 0
  providers = {
    aws = aws.sso
  }

  account_id = data.aws_caller_identity.current.account_id
  ps_group_assignments = {
    # global-administrator    = ["AD_GROUP01"]
    # global-network-admin    = ["AD_GROUP02"]
    # global-security-auditor = ["AD_GROUP03"]
  }
}

# we have to treat separately the permissionsets for the management account, because permissions in this case must
# be configured in the management account
module "global-sso-assignments-for-management" {
  source = "./modules/terraform-aws-sso-permissionsets-assignments"
  count  = local.account_id == local.management_account_id ? 1 : 0
  providers = {
    aws = aws
  }

  account_id = data.aws_caller_identity.current.account_id
  ps_group_assignments = {
    # mgmt-administrator    = ["AD_GROUP01"]
    # mgmt-security-auditor = ["AD_GROUP02"]
  }
}