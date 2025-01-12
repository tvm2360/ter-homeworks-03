output "all" {
  value = concat(
    [for k, v in yandex_compute_instance.platform : format("{%#v = '%s'\n %#v = '%s'\n %#v = '%s'},", "name", v.name, "id", v.id, "fqdn", v.fqdn)],
    [for k, v in yandex_compute_instance.database : format("{%#v = '%s'\n %#v = '%s'\n %#v = '%s'},", "name", v.name, "id", v.id, "fqdn", v.fqdn)],
    [format("{%#v = '%s'\n %#v = '%s'\n %#v = '%s'},", "name", yandex_compute_instance.storage.name, "id", yandex_compute_instance.storage.id, "fqdn", yandex_compute_instance.storage.fqdn)]
  )
}

