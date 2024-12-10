aws_region   = "eu-north-1"

account_names = {
  Dev  = { email = "dev@example.com" }
  Prod = { email = "prod@example.com" }
}

vpc_cidr    = "10.0.0.0/16"
vpc_name    = "MainVPC"
subnet_cidrs = {
  Subnet1 = "10.0.1.0/24"
  Subnet2 = "10.0.2.0/24"
}

role_name          = "example-role"
assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF

policy_name     = "example-policy"
policy_document = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "s3:*",
      "Resource": "*"
    }
  ]
}
EOF
