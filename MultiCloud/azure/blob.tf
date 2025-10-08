resource "random_id" "container_id" {
  byte_length = 4
}

resource "azurerm_resource_group" "this" {
  name     = "${var.project}-rg"
  location = var.location
  tags     = var.tags
}

resource "azurerm_storage_account" "this" {
  name                     = "autoeditor${random_id.container_id.hex}"
  resource_group_name      = azurerm_resource_group.this.name
  location                 = azurerm_resource_group.this.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  min_tls_version          = "TLS1_2"
  tags                    = var.tags
}

resource "azurerm_storage_container" "this" {
  name                  = "autoeditor-${random_id.container_id.hex}"
  storage_account_name  = azurerm_storage_account.this.name 
  container_access_type = "private"
}
