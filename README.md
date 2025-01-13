# ter-homeworks-03

## Задание 1

<table>
  <tr>
    <td>Входящий трафик</td>
    <td>Исходящий трафик</td>
  </tr>
  <tr>
    <td><img src="./pictures/1_SG_1_in.png" width=890 height=270></td>
    <td><img src="./pictures/1_SG_1_out.png" width=890 height=270></td>
  </tr>
  <tr>
    <td><img src="./pictures/1_SG_2_in.png" width=890 height=270></td>
    <td><img src="./pictures/1_SG_2_out.png" width=890 height=270></td>
  </tr>
 </table>

## Задание 2

![Terraform_apply](./pictures/2_Terraform_apply.png)

![VM](./pictures/2_VM.png)

![VM_depends_on](./pictures/2_Depends_on.png)

## Задание 3

![VM_with_SecondDiscs](./pictures/3_VM_with_SecondDiscs.png)

![lshw](./pictures/3_lshw.png)

## Задание 4

![hosts.conf](./pictures/4_cat_hosts_conf.png)

## Задание 5

output.tf:

```
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
```

terraform output:

![Terraform_output_all_inst](./pictures/5_Terraform_output_all_inst.png)

## Задание 6

6.1.:

![Ansible](./pictures/6_Ansible.png)

6.2.:

![NAT_is_true](./pictures/6_NAT_is_true.png)

![NAT_on](./pictures/6_NAT_on.png)

![NAT_is_false](./pictures/6_NAT_is_false.png)

![NAT_off](./pictures/6_NAT_off.png)
