# © 2024 Amazon Web Services, Inc. or its affiliates. All Rights Reserved.
# 
# This AWS Content is provided subject to the terms of the AWS Customer Agreement
# available at http://aws.amazon.com/agreement or other written agreement between
# Customer and either Amazon Web Services, Inc. or Amazon Web Services EMEA SARL or both.

#---------------------------------------
# Local variables
#---------------------------------------
locals {
  identity_store_id = tolist(data.aws_ssoadmin_instances.sso_management.identity_store_ids)[0]
  sso_instance_arn  = tolist(data.aws_ssoadmin_instances.sso_management.arns)[0]

  groups = flatten([
    for ps, groups in var.ps_group_assignments : [
      for group in groups : group
    ]
    ]
  )

  ps_to_groups = distinct(flatten([
    for ps, groups in var.ps_group_assignments : [
      for group in groups : {
        ps    = ps
        group = group
      }
    ]
    ]
    )
  )

}

