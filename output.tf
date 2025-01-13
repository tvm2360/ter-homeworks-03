output "all_inst" {
  value = flatten([
    [for inst_pl in yandex_compute_instance.platform : {
      name = inst_pl.name
      id = inst_pl.id
      fqdn = inst_pl.fqdn
    }],
    [for inst_db in yandex_compute_instance.database : {
      name = inst_db.name
      id = inst_db.id
      fqdn = inst_db.fqdn
    }],
    [{
      name = yandex_compute_instance.storage.name
      id = yandex_compute_instance.storage.id
      fqdn = yandex_compute_instance.storage.fqdn
    }]
  ])
}