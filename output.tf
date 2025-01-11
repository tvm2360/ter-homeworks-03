output "name_web-1" {
  value = length(yandex_compute_instance.platform) > 0 ? yandex_compute_instance.platform[0].name : null
}
output "ip_web-1" {
  value = length(yandex_compute_instance.platform) > 0 ? yandex_compute_instance.platform[0].network_interface.0.nat_ip_address : null
}
output "name_web-2" {
  value = length(yandex_compute_instance.platform) > 1 ? yandex_compute_instance.platform[1].name : null
}
output "ip_web-2" {
  value = length(yandex_compute_instance.platform) > 1 ? yandex_compute_instance.platform[1].network_interface.0.nat_ip_address : null
}
output "name_database-1" {
  value = length(yandex_compute_instance.database) > 0 ? yandex_compute_instance.database["main"].name : null
}
output "ip_database-1" {
  value = length(yandex_compute_instance.database) > 0 ? yandex_compute_instance.database["main"].network_interface.0.nat_ip_address : null
}
output "name_database-2" {
  value = length(yandex_compute_instance.database) > 1 ? yandex_compute_instance.database["replica"].name : null
}
output "ip_database-2" {
  value = length(yandex_compute_instance.database) > 1 ? yandex_compute_instance.database["replica"].network_interface.0.nat_ip_address : null
}
output "ip_storage" {
  value = yandex_compute_instance.storage.network_interface.0.nat_ip_address
}
