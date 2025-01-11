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


