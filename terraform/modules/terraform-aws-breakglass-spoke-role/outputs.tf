# © 2024 Amazon Web Services, Inc. or its affiliates. All Rights Reserved.
# This AWS Content is provided subject to the terms of the AWS Customer Agreement available at
# http://aws.amazon.com/agreement or other written agreement between Customer and either
# Amazon Web Services, Inc. or Amazon Web Services EMEA SARL or both.


output "breakglass_role_arn" { value = aws_iam_role.breakglass.arn }
output "breakglass_role_name" { value = aws_iam_role.breakglass.name }
