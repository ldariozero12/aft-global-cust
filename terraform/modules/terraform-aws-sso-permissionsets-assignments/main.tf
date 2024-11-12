# © 2024 Amazon Web Services, Inc. or its affiliates. All Rights Reserved.  # This AWS Content is provided subject to the terms of the AWS Customer Agreement available at # http://aws.amazon.com/agreement or other written agreement between Customer and either
# Amazon Web Services, Inc. or Amazon Web Services EMEA SARL or both.

resource "aws_ssoadmin_account_assignment" "assignment" {
  for_each = { for element in local.ps_to_groups : "${element.ps}-${element.group}" => element }

  instance_arn       = local.sso_instance_arn
  permission_set_arn = data.aws_ssoadmin_permission_set.permission_set[each.value.ps].arn

  principal_id   = data.aws_identitystore_group.groups[each.value.group].group_id
  principal_type = "GROUP"

  target_id   = var.account_id
  target_type = "AWS_ACCOUNT"
}
