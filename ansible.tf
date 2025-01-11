resource "local_file" "hosts_templatefile" {
  content = templatefile("${path.module}/hosts.tftpl",
  { webservers = yandex_compute_instance.platform, databases = yandex_compute_instance.database, storage = yandex_compute_instance.storage})
  filename = "${abspath(path.module)}/hosts.cfg"
}

