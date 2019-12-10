/**
 * This File defines all necessary variables for Terraform
 */

variable "region" {
  type = string
  description = "The Aws region"
}

variable "prefix" {
  type = string
  description = "The prefix, set for resources"
}
