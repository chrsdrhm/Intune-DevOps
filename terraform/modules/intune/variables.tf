variable "NAMING_PREFIX" {
  description = "Prefix for resource names"
  type        = string
}

variable "TAGS" {
  description = "Tags to apply to resources"
  type        = map(string)
}

variable "ENTRA_GROUP_ID" {
  description = "The Entra group ID for assignments"
  type        = string
}