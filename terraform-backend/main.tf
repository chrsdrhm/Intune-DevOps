# Resource Group for Terraform Backend (tfstate)
resource "azurerm_resource_group" "tf_backend_rg" {
  name     = "${var.naming_prefix}-tf-backend" # Resource group name
  location = var.region

  tags = local.tags
}

# Storage Account for Terraform Backend (tfstate)
resource "azurerm_storage_account" "tf_backend_sa" {
  name                     = "${var.naming_prefix}tfstate" # Storage account name (must be globally unique)
  resource_group_name      = azurerm_resource_group.tf_backend_rg.name
  location                 = azurerm_resource_group.tf_backend_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = local.tags
}

# Storage Container for Terraform Backend (tfstate)
resource "azurerm_storage_container" "tf_backend_blob" {
  name                  = "tfstate" # Container name
  storage_account_id    = azurerm_storage_account.tf_backend_sa.id
  container_access_type = "private"
}
