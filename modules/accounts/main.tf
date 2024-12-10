resource "aws_organizations_account" "accounts" {
  for_each = var.account_names
  name     = each.key
  email    = each.value.email

  lifecycle {
    create_before_destroy = true
  }
}
