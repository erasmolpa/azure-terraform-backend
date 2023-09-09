variable "resource_group_name" {
  type    = string
  default = "tfstategroup"
}

variable "location" {
  type    = string
  default = "East US"
}

variable "create_lock" {
  type        = bool
  default     = false
  description = "Should an Azure Management Lock being created?"
}

variable "storage_account_name" {
  type    = string
  default = "tfstatesa"
}

variable "storage_container_name" {
  type    = string
  default = "tfstatesc"
}

variable "storage_container_access_type" {
  type        = string
  default     = "private"
  description = "Blob Container Access Type (defaults to private)"
}

variable "account_tier" {
  type        = string
  default     = "Standard"
  description = "Azure Storage Account Tier (defaults to Standard)"
}
variable "account_replication_type" {
  type        = string
  default     = "LRS"
  description = "Azure Storage Account Replication Type (defaults to LRS)"
}

variable "infrastructure_encryption_enabled" {
  type        = bool
  default     = false
  description = "Should an Azure Management Lock being created?"
}
variable "tags" {
  type = map(string)
  default = {
    environment = "test"
    region      = "test"
  }
  description = "A map of Azure tags, assoicated with all created resources"
}
