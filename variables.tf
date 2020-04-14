variable "tf_state_resource_group" {
    default = "terraform-state"
}

variable "tf_storage_account_name" {
    default = "tfstateserverlessmessa"
}

variable "tf_container_name" {
    default = "tfstatecontainer"
}

variable "POC_Azure_Region" {
    default = "East US"
}

variable "POC_Resource_Group" {
    default = "messa-serverless"
}

variable "POC_StaticFile_Name" {
    default = "messastatic"
}

variable "AzSubscriptionId" {
    default = "8f8dea6b-7103-462b-9e6e-ad01f7f62903"
}