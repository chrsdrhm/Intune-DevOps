variable "NAMING_PREFIX" {
  description = "Prefix for resource names"
  type        = string
}

variable "AZURE_REGION" {
  description = "Azure region for resources (e.g. 'East US')"
  type        = string
}

variable "AZURE_SUBSCRIPTION_ID" {
  description = "Azure Subscription ID where resources will be created"
  type        = string
}