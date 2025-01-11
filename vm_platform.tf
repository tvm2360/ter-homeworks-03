variable "vm_number" {
  type        = number
  default     = 2
  description = "Number of Virtual Machines"
}

variable "vm_name_prefix" {
  type        = string
  default     = "web"
  description = "Virtual Machine Prefix Name"
}

variable "vm_platform_id" {
  type        = string
  default     = "standard-v1"
  description = "VM platform based on ... "
}

variable "vm_cores" {
  type        = number
  default     = 2
  description = "Number of CPU cores"
}

variable "vm_memory" {
  type        = number
  default     = 1
  description = "Memory capacity in Gb"
}

variable "vm_core_fraction" {
 type        = number
  default     = 20
  description = "Percent of core fraction"
}

variable "vm_preemptible" {
  type        = bool
  default     = true
  description = "VM is preemptible?"
}

variable "vm_stopping_for_update" {
  type        = bool
  default     = true
  description = "Allow VM stopping for update"
}

variable "vm_serial_port_enable" {
  type        = number
  default     = 0
  description = "Serial port is not enable"
}

variable "vm_hdd_type" {
  type        = string
  default     = "network-hdd"
  description = "Choosing the HDD type"
}

variable "vm_hdd_size" {
  type        = number
  default     = 5
  description = "Choosing the HDD size"
}

variable "vm_nat" {
  type        = bool
  default     = true
  description = "VM using NAT?"
}

variable "each_vm" {
  type = list(
     object({
        vm_name = string,
        cpu = number,
        ram = number,
        core_fraction = number,
        disk_type = string,
        disk_volume = number,
        platform_id = string,
        preemptible = bool,
        use_nat = bool,
        stopping_for_update = bool,
        serial_port_enable = number
    })
  )
}


