output "role_arn" {
  description = "ARN of the created IAM role"
  value       = aws_iam_role.example.arn
}
