variable "account_names" {
  description = "Map of account names to email addresses"
  type        = map(object({
    email = string
  }))
}
