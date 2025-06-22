variable "AZURE_REGION" {
  description = "Azure region for resources (e.g. 'East US')"
  type        = string
}

variable "NAMING_PREFIX" {
  description = "Prefix for resource names"
  type        = string
}

variable "TAGS" {
  description = "Tags to apply to resources"
  type        = map(string)
}