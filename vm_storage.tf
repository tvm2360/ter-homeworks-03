variable "storage_name" {
  type        = string
  default     = "storage"
  description = "Virtual Machine Name"
}

variable "storage_platform_id" {
  type        = string
  default     = "standard-v1"
  description = "VM platform based on ... "
}

variable "storage_cores" {
  type        = number
  default     = 2
  description = "Number of CPU cores"
}

variable "storage_memory" {
  type        = number
  default     = 1
  description = "Memory capacity in Gb"
}

variable "storage_core_fraction" {
 type        = number
  default     = 20
  description = "Percent of core fraction"
}

variable "storage_preemptible" {
  type        = bool
  default     = true
  description = "VM is preemptible?"
}

variable "storage_stopping_for_update" {
  type        = bool
  default     = true
  description = "Allow VM stopping for update"
}

variable "storage_serial_port_enable" {
  type        = number
  default     = 0
  description = "Serial port is not enable"
}

variable "storage_hdd_type" {
  type        = string
  default     = "network-hdd"
  description = "Choosing the HDD type"
}

variable "storage_hdd_size" {
  type        = number
  default     = 5
  description = "Choosing the HDD size"
}

variable "storage_nat" {
  type        = bool
  default     = true
  description = "VM using NAT?"
}

variable "storage_secondary_disks_auto_delete" {
  type        = bool
  default     = false
  description = "Will the disk be deleted automatically when the instance is deleted"
}

variable "storage_secondary_disks_mode" {
  type        = string
  default     = "READ_WRITE"
  description = "Disks access mode"
}
