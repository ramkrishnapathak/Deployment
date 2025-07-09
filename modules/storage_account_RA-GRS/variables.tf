variable "storage_account_name" {
  description = "The name of the Storage Account."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "name_tag" {
  description = "The value for the Name tag."
  type        = string
}

variable "env" {
  description = "The environment tag. Accepted values are Dev, QA, Stg, and Prd."
  type        = string
  validation {
    condition     = contains(["Dev", "QA", "Stg", "Prd"], var.env)
    error_message = "The env variable must be one of: Dev, QA, Stg, Prd."
  }
}