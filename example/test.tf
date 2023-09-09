provider "azurerm" {
  features {}
}

module "state_backend" {
  source               = "./.."
  resource_group_name  = "tfstategroup"
  storage_account_name = "tfstateaccountdev"
  location               = "East US"
  tags = {
    name        = "test"
    environment = "test"
  }

}