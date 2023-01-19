
variable "account_replication_type" {
  type        = string
  description = "The azure storage repliacation"
  default = "LRS"

  validation {
       condition = contains(["LRS", "GRS"], var.account_replication_type)
       error_message = "The Replication Type can ONLY be LRS or GRS"
  }
}

variable "account_tier" {
  type        = string
  description = "The azure storage account tier"
  default = "Standard"
}

variable "account_name" {
  type        = string
  description = "The azure storage account name"
  nullable = false
}

variable "container_name" {
  type        = string
  description = "The container name"
  nullable = false
}
