module "azure" {
  source        = "./modules/azure"
  NAMING_PREFIX = var.NAMING_PREFIX
  AZURE_REGION  = var.AZURE_REGION
  TAGS          = local.tags
}

module "entra" {
  source        = "./modules/entra"
  NAMING_PREFIX = var.NAMING_PREFIX
}

module "intune" {
  source         = "./modules/intune"
  NAMING_PREFIX  = var.NAMING_PREFIX
  TAGS           = local.tags
  ENTRA_GROUP_ID = module.entra.demo-group_id
}