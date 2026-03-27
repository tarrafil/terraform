variable "project_name" {
  description = "project_name"
  type = string
}

variable "project_id" {
  description = "project_id"
  type = string
}

variable "billing_account" {
  description = "billing_account"
  type = string
}

variable "region" {
  description = "region"
  type = string
  default = "southamerica-east1-a"
}

variable "environment" {
  description = "environment"
  type = string
  validation {
    condition = contains(["dev", "hml", "prd"], var.environment)
    error_message = "O ambiente deve ser dev, hml ou prd."
  }
}

variable "buckets" {
  description = "buckets"
  type = string
  default = "test-bucket-nio"
}