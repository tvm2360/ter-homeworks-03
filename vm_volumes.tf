variable "volumes_number" {
  type        = number
  default     = 3
  description = "Number of Volumes"
}

variable "volume_name_prefix" {
  type        = string
  default     = "disk"
  description = "Volume Name Prefix"
}

variable "volume_hdd_type" {
  type        = string
  default     = "network-hdd"
  description = "Choosing the HDD type"
}

variable "volume_hdd_size" {
  type        = number
  default     = 1
  description = "Choosing the HDD size"
}

