variable "NAMING_PREFIX" {
  description = "Prefix for resource names"
  type        = string
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
}

variable "entra_group_id" {
  description = "The Entra group ID to assign a compliance policy to"
  type        = string
}