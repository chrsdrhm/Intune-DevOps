variable "naming_prefix" {
  description = "Prefix for resource names"
  type        = string
  default = local.naming_prefix
}

variable "region" {
  description = "Azure region for resources (e.g. 'East US')"
  type        = string
  default     = local.region
}

variable "AZURE_SUBSCRIPTION_ID" {
  description = "Azure Subscription ID where resources will be created"
  type        = string
}