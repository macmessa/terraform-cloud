resource "azurerm_storage_account" "static_website" {
    account_replication_type  = "GRS"
    account_tier              = "Standard"
    account_kind              = "StorageV2"
    location                  = azurerm_resource_group.serverless-group.location
    name                      = var.POC_StaticFile_Name
    resource_group_name       = azurerm_resource_group.serverless-group.name
    enable_https_traffic_only = true

    static_website {
        index_document     = "index.html"
        error_404_document = "error.html"
    }
}

resource "azurerm_signalr_service" "serverless_signalr" {
    name                = "serverlesspoc-signalr"
    location            = azurerm_resource_group.serverless-group.location
    resource_group_name = azurerm_resource_group.serverless-group.name

    sku {
        name     = "Standard_S1"
        capacity = 2
    }

    cors {
        allowed_origins = ["*"]
    }

    features {
        flag  = "ServiceMode"
        value = "Serverless"
    }

    features {
        flag  = "EnableConnectivityLogs"
        value = "True"
    }
}