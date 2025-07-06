variable "resource_group_name" {
  description = "Name of the Azure resource group"
  type        = string
  default     = "cst8918-aks-rg"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "eastus"
}

variable "aks_cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
  default     = "cst8918-aks-cluster"
}

variable "node_count_min" {
  description = "Minimum node count"
  type        = number
  default     = 1
}

variable "node_count_max" {
  description = "Maximum node count"
  type        = number
  default     = 3
}

variable "node_vm_size" {
  description = "VM size for AKS nodes"
  type        = string
  default     = "Standard_B2s"
}
