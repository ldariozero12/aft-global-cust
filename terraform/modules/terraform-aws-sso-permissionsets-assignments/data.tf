# © 2024 Amazon Web Services, Inc. or its affiliates. All Rights Reserved.
# 
# This AWS Content is provided subject to the terms of the AWS Customer Agreement
# available at http://aws.amazon.com/agreement or other written agreement between
# Customer and either Amazon Web Services, Inc. or Amazon Web Services EMEA SARL or both.

#----------------------------------------------------------------
# sso_manangement contains sso instance arn and identity sso id
#----------------------------------------------------------------


data "aws_ssoadmin_instances" "sso_management" {}

data "aws_identitystore_group" "groups" {
  for_each          = toset(local.groups)
  identity_store_id = local.identity_store_id

  alternate_identifier {
    unique_attribute {
      attribute_path  = "DisplayName"
      attribute_value = each.key
    }
  }
}

data "aws_ssoadmin_permission_set" "permission_set" {
  for_each     = var.ps_group_assignments
  instance_arn = local.sso_instance_arn
  name         = each.key
}
