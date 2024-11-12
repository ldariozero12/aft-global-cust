# terraform-aws-breakglass-spoke-role

This module creates the breakglass role in the member accounts that can be used to perform activities when SSO is broken. The current module must be run on all member accounts, and it works in conjuction with the role `terraform-aws-breakglass-user` that is applied to the  account chosen to host the breakglass user (audit or any other security account is a good candidate).

The role grants AdministratorAccess and trusts the breakglass user in the audit account.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_role.breakglass](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.breakglass_administrator_role_policy_attach](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_breakglass_account_id"></a> [breakglass\_account\_id](#input\_breakglass\_account\_id) | Account ID where the breakglass user is configured | `string` | n/a | yes |
| <a name="input_breakglass_role_name"></a> [breakglass\_role\_name](#input\_breakglass\_role\_name) | Name of the IAM role with admin privileges created in all accounts used in case of SSO outage | `string` | n/a | yes |
| <a name="input_breakglass_user_name"></a> [breakglass\_user\_name](#input\_breakglass\_user\_name) | Name of the IAM user with the grant to assume the breakglass role in target accounts in case of SSO outage | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_breakglass_role_arn"></a> [breakglass\_role\_arn](#output\_breakglass\_role\_arn) | n/a |
| <a name="output_breakglass_role_name"></a> [breakglass\_role\_name](#output\_breakglass\_role\_name) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->