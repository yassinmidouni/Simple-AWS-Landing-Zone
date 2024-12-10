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
