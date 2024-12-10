provider "aws" {
  region = var.aws_region
}

module "accounts" {
  source       = "./modules/accounts"
  account_names = var.account_names
}

module "networking" {
  source       = "./modules/networking"
  vpc_cidr     = var.vpc_cidr
  vpc_name     = var.vpc_name
  subnet_cidrs = var.subnet_cidrs
}

module "security" {
  source             = "./modules/security"
  role_name          = var.role_name
  assume_role_policy = var.assume_role_policy
  policy_name        = var.policy_name
  policy_document    = var.policy_document
}
