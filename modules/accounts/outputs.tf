output "account_ids" {
  description = "List of AWS account IDs"
  value       = [for account in aws_organizations_account.accounts : account.id]
}
