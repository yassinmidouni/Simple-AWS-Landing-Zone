variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "account_names" {
  description = "Map of account names to email addresses"
  type        = map(object({
    email = string
  }))
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "subnet_cidrs" {
  description = "Map of subnet CIDR blocks"
  type        = map(string)
}

variable "role_name" {
  description = "Name of the IAM role"
  type        = string
}

variable "assume_role_policy" {
  description = "Policy document for assuming the role"
  type        = string
}

variable "policy_name" {
  description = "Name of the IAM policy"
  type        = string
}

variable "policy_document" {
  description = "Policy document for the IAM policy"
  type        = string
}
