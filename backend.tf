terraform {
    required_version = ">= 0.12"
    backend "azurerm" {
        resource_group_name  = "terraform-state"
        storage_account_name = "tfstateserverlessmessa"
        container_name       = "tfstatecontainermessa"
        key                  = "terraform.tfstate"
    }
}