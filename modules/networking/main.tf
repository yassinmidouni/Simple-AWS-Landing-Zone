resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "subnet" {
  for_each = var.subnet_cidrs

  vpc_id     = aws_vpc.main.id
  cidr_block = each.value

  tags = {
    Name = "Subnet-${each.key}"
  }
}

