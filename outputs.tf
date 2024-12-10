output "account_ids" {
  description = "List of AWS account IDs"
  value       = module.accounts.account_ids
}

output "vpc_id" {
  description = "ID of the created VPC"
  value       = module.networking.vpc_id
}

output "subnet_ids" {
  description = "List of Subnet IDs"
  value       = module.networking.subnet_ids
}

output "role_arn" {
  description = "ARN of the created IAM role"
  value       = module.security.role_arn
}
