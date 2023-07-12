#считываем данные об образе ОС
data "yandex_compute_image" "centos-stream-8" {
  family = var.os_family
}

resource "yandex_compute_instance" "clickhouse" {
  name        = "clickhouse"

  resources {
    cores  = 2
    memory = 1
    core_fraction = 5
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.centos-stream-8.image_id
      type = "network-hdd"
      size = 10
    }
  }
  scheduling_policy { preemptible = true }

  network_interface { 
    subnet_id = "${yandex_vpc_subnet.develop.id}" 
    nat = true
    }
metadata = {
  user-data = "${file("cloud-init.yaml")}"
}
}

resource "yandex_compute_instance" "vector" {
    name        = "vector"

  resources {
    cores  = 2
    memory = 1
    core_fraction = 5
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.centos-stream-8.image_id
      type = "network-hdd"
      size = 10
    }
  }
  scheduling_policy { preemptible = true }

  network_interface { 
    subnet_id = "${yandex_vpc_subnet.develop.id}" 
    nat = true
    }
metadata = {
  user-data = "${file("cloud-init.yaml")}"
}
}


resource "yandex_compute_instance" "lighthouse" {
    name        = "lighthouse"

  resources {
    cores  = 2
    memory = 1
    core_fraction = 5
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.centos-stream-8.image_id
      type = "network-hdd"
      size = 10
    }
  }
  scheduling_policy { preemptible = true }

  network_interface { 
    subnet_id = "${yandex_vpc_subnet.develop.id}" 
    nat = true
    }
metadata = {
  user-data = "${file("cloud-init.yaml")}"
}
}