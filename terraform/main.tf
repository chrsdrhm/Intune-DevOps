module "azure" {
  source        = "./modules/azure"
  NAMING_PREFIX = var.NAMING_PREFIX
  AZURE_REGION  = var.AZURE_REGION
  tags          = local.tags
}

module "entra" {
  source        = "./modules/entra"
  NAMING_PREFIX = var.NAMING_PREFIX
}

module "intune" {
  source         = "./modules/intune"
  NAMING_PREFIX  = var.NAMING_PREFIX
  tags           = local.tags
  entra_group_id = module.entra.demo-group_id
}