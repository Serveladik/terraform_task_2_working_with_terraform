variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "location" {
  type        = string
  description = "The location/region of the resources."
}

variable "storage_account_name" {
  type        = string
  description = "The name of the storage account."
}

variable "container_name" {
  type        = string
  description = "The name of the storage container."
}

variable "blob_name" {
  type        = string
  description = "The name of the blob in the storage container."
}

# Adding owner and environment as a map variable for better flexibility
variable "tags" {
  description = "Map of tags for environment and owner"
  type        = map(string)
  default = {
    environment = "Staging"
    owner       = "XtheCutter"
  }
}
