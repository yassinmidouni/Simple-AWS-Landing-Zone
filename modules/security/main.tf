resource "aws_iam_role" "example" {
  name               = var.role_name
  assume_role_policy = var.assume_role_policy
}

resource "aws_iam_policy" "example" {
  name        = var.policy_name
  description = "Example policy"
  policy      = var.policy_document
}
