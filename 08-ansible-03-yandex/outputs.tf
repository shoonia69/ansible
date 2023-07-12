output "vm_external_ip_clickhouse" {
value = yandex_compute_instance.clickhouse.network_interface[0].nat_ip_address
description = "vm external ip"
}

output "vm_external_ip_vector" {
value = yandex_compute_instance.vector.network_interface[0].nat_ip_address
description = "vm external ip"
}

output "vm_external_ip_lighthouse" {
value = yandex_compute_instance.lighthouse.network_interface[0].nat_ip_address
description = "vm external ip"
}



# Generate inventory file
resource "local_file" "inventory" {
 filename = "./playbook/inventory/prod.yml"
 content = <<EOF
all:
 children:
  clickhouse:
    hosts:
      clickhouse_vm:
       ansible_host: ${yandex_compute_instance.clickhouse.network_interface[0].nat_ip_address}
  vector:
    hosts:
      vector_vm:
        ansible_host: ${yandex_compute_instance.vector.network_interface[0].nat_ip_address}
  lighthouse:
    hosts:
      lighthouse_vm:
         ansible_host: ${yandex_compute_instance.lighthouse.network_interface[0].nat_ip_address}
EOF
}