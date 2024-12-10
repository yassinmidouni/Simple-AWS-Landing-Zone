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

