PS C:\Users\USER\Desktop\Aws Landing Zone> ls


    Répertoire : C:\Users\USER\Desktop\Aws Landing Zone


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        10/12/2024     15:51                modules
-a----        10/12/2024     17:42            556 main.tf
-a----        10/12/2024     17:42            449 outputs.tf
-a----        10/12/2024     17:41            753 terraform.tfvars
-a----        10/12/2024     17:42            989 variables.tf


PS C:\Users\USER\Desktop\Aws Landing Zone> terraform init
Initializing the backend...
Initializing modules...
- accounts in modules\accounts
- networking in modules\networking
- security in modules\security
Initializing provider plugins...
- Finding latest version of hashicorp/aws...
- Installing hashicorp/aws v5.80.0...
- Installed hashicorp/aws v5.80.0 (signed by HashiCorp)
Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
PS C:\Users\USER\Desktop\Aws Landing Zone> terraform plan

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  + create

Terraform will perform the following actions:

  # module.accounts.aws_organizations_account.accounts["Dev"] will be created
  + resource "aws_organizations_account" "accounts" {
      + arn               = (known after apply)
      + close_on_deletion = false
      + create_govcloud   = false
      + email             = "dev@example.com"
      + govcloud_id       = (known after apply)
      + id                = (known after apply)
      + joined_method     = (known after apply)
      + joined_timestamp  = (known after apply)
      + name              = "Dev"
      + parent_id         = (known after apply)
      + status            = (known after apply)
      + tags_all          = (known after apply)
    }

  # module.accounts.aws_organizations_account.accounts["Prod"] will be created
  + resource "aws_organizations_account" "accounts" {
      + arn               = (known after apply)
      + close_on_deletion = false
      + create_govcloud   = false
      + email             = "prod@example.com"
      + govcloud_id       = (known after apply)
      + id                = (known after apply)
      + joined_method     = (known after apply)
      + joined_timestamp  = (known after apply)
      + name              = "Prod"
      + parent_id         = (known after apply)
      + status            = (known after apply)
      + tags_all          = (known after apply)
    }

  # module.networking.aws_subnet.subnet["Subnet1"] will be created
  + resource "aws_subnet" "subnet" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.1.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "Subnet-Subnet1"
        }
      + tags_all                                       = {
          + "Name" = "Subnet-Subnet1"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.networking.aws_subnet.subnet["Subnet2"] will be created
  + resource "aws_subnet" "subnet" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.2.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "Subnet-Subnet2"
        }
      + tags_all                                       = {
          + "Name" = "Subnet-Subnet2"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.networking.aws_vpc.main will be created
  + resource "aws_vpc" "main" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.0.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_dns_hostnames                 = true
      + enable_dns_support                   = true
      + enable_network_address_usage_metrics = (known after apply)
      + id                                   = (known after apply)
      + instance_tenancy                     = "default"
      + ipv6_association_id                  = (known after apply)
      + ipv6_cidr_block                      = (known after apply)
      + ipv6_cidr_block_network_border_group = (known after apply)
      + main_route_table_id                  = (known after apply)
      + owner_id                             = (known after apply)
      + tags                                 = {
          + "Name" = "MainVPC"
        }
      + tags_all                             = {
          + "Name" = "MainVPC"
        }
    }

  # module.security.aws_iam_policy.example will be created
  + resource "aws_iam_policy" "example" {
      + arn              = (known after apply)
      + attachment_count = (known after apply)
      + description      = "Example policy"
      + id               = (known after apply)
      + name             = "example-policy"
      + name_prefix      = (known after apply)
      + path             = "/"
      + policy           = jsonencode(
            {
              + Statement = [
                  + {
                      + Action   = "s3:*"
                      + Effect   = "Allow"
                      + Resource = "*"
                    },
                ]
              + Version   = "2012-10-17"
            }
        )
      + policy_id        = (known after apply)
      + tags_all         = (known after apply)
    }

  # module.security.aws_iam_role.example will be created
  + resource "aws_iam_role" "example" {
      + arn                   = (known after apply)
      + assume_role_policy    = jsonencode(
            {
              + Statement = [
                  + {
                      + Action    = "sts:AssumeRole"
                      + Effect    = "Allow"
                      + Principal = {
                          + Service = "ec2.amazonaws.com"
                        }
                    },
                ]
              + Version   = "2012-10-17"
            }
        )
      + create_date           = (known after apply)
      + force_detach_policies = false
      + id                    = (known after apply)
      + managed_policy_arns   = (known after apply)
      + max_session_duration  = 3600
      + name                  = "example-role"
      + name_prefix           = (known after apply)
      + path                  = "/"
      + tags_all              = (known after apply)
      + unique_id             = (known after apply)

      + inline_policy (known after apply)
    }

Plan: 7 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + account_ids = [
      + (known after apply),
      + (known after apply),
    ]
  + role_arn    = (known after apply)
  + subnet_ids  = [
      + (known after apply),
      + (known after apply),
    ]
  + vpc_id      = (known after apply)

───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if
you run "terraform apply" now.
PS C:\Users\USER\Desktop\Aws Landing Zone>