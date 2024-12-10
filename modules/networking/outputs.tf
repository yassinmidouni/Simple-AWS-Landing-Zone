output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.main.id
}

output "subnet_ids" {
  description = "List of Subnet IDs"
  value       = [for subnet in aws_subnet.subnet : subnet.id]
}

