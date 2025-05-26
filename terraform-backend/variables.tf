variable "AZURE_SUBSCRIPTION_ID" {
  description = "Azure Subscription ID where resources will be created"
  type        = string
}

variable "naming_prefix" {
  description = "Prefix for resource names (this should be unique)"
  type        = string
}

variable "region" {
  description = "Azure region for resources (e.g. 'East US')"
  type        = string
  default     = "East US"
}