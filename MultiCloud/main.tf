module "azure_blob" {
  source   = "../../azure/blob_storage"
  project  = var.project
  location = var.location
  tags     = var.tags
}

module "s3" {
  source  = "../../aws/s3"
  project = var.project
  tags    = var.tags
}

