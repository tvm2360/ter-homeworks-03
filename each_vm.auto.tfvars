each_vm = [
  {
     vm_name = "main",
     cpu = 2,
     ram = 2,
     core_fraction = 20,
     disk_type = "network-hdd",
     disk_volume = 5,
     platform_id = "standard-v1",
     preemptible = true,
     use_nat = true,
     stopping_for_update = true,
     serial_port_enable = 0
  },
  {
     vm_name = "replica",
     cpu = 2,
     ram = 1,
     core_fraction = 20,
     disk_type = "network-hdd",
     disk_volume = 6,
     platform_id = "standard-v1",
     preemptible = true,
     use_nat = true,
     stopping_for_update = true,
     serial_port_enable = 0
  }
]
