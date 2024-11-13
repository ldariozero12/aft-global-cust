# © 2024 Amazon Web Services, Inc. or its affiliates. All Rights Reserved.  
# This AWS Content is provided subject to the terms of the AWS Customer Agreement available at 
# http://aws.amazon.com/agreement or other written agreement between Customer and either
# Amazon Web Services, Inc. or Amazon Web Services EMEA SARL or both.

module "terraform-aws-breakglass-spoke-role" {
  source = "./modules/terraform-aws-breakglass-spoke-role"
  count  = local.account_id != local.audit_account_id && local.account_id != local.management_account_id ? 1 : 0
  
  breakglass_account_id = local.audit_account_id
  breakglass_user_name  = "breakglass-user"
  breakglass_role_name  = "breakglass-role"
}
