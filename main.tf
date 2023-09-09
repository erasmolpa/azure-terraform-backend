
locals {
  default_tags = {
    scope       = "testing"
    environment = "testing"
    owner       = "erasmolpa@gmail.com"
  }
  all_tags = merge(local.default_tags, var.tags)
}

resource "azurerm_resource_group" "rg_tfstate" {
  name     = var.resource_group_name
  location = var.location
  tags     = local.all_tags
}

resource "azurerm_management_lock" "rg_lock" {
  name       = "${azurerm_resource_group.rg_tfstate.name}-lock"
  count      = var.create_lock ? 1 : 0
  scope      = azurerm_resource_group.rg_tfstate.id
  lock_level = "CanNotDelete"
}

resource "azurerm_storage_account" "sa_tfstate" {
  name                              = var.storage_account_name
  resource_group_name               = azurerm_resource_group.rg_tfstate.name
  location                          = azurerm_resource_group.rg_tfstate.location
  account_tier                      = var.account_tier
  account_replication_type          = var.account_replication_type
  allow_nested_items_to_be_public   = false
  infrastructure_encryption_enabled = var.infrastructure_encryption_enabled
  tags                              = local.all_tags
}

resource "azurerm_storage_container" "sc_tfstate" {
  name                  = var.storage_container_name
  storage_account_name  = azurerm_storage_account.sa_tfstate.name
  container_access_type = var.storage_container_access_type
}
