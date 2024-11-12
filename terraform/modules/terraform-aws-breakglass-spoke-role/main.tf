# © 2024 Amazon Web Services, Inc. or its affiliates. All Rights Reserved.
# This AWS Content is provided subject to the terms of the AWS Customer Agreement available at
# http://aws.amazon.com/agreement or other written agreement between Customer and either
# Amazon Web Services, Inc. or Amazon Web Services EMEA SARL or both.


# Creating Break-glass role and attaching IAM trust policy to authorize its usage by role assumption
resource "aws_iam_role" "breakglass" {
  name = var.breakglass_role_name
  assume_role_policy = templatefile("${path.module}/iam/iam_spoke_role_assume_policy.json", {
    "authorized_arn" = "arn:aws:iam::${var.breakglass_account_id}:user/${var.breakglass_user_name}"
  })
}

# Attaching privilege grant to the role
resource "aws_iam_role_policy_attachment" "breakglass_administrator_role_policy_attach" {
  role       = aws_iam_role.breakglass.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
