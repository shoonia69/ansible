###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCRDYi9cEG5CeeuN2EcsiBB5xsAHSqkSW73CdgliJ7JSJlgv4rYUf+hS0E+4D31s6WtqaGcwoazRtLi36jtdAJTHDEII05a+vb96KDHAWQ/bunwNHEjmlkYCjg7dspLEFu8FE+2JavczG65/9IdAlYfdYr31RiwmD0n+g+Im7MCEpPr4fDWbYG4yYBCHVpEXdjz18o/7BwFrNQ/zlARBKOCv9N9M+61QaedWsXln817qzOCLGOMWvct8EXlHOe5KEqJysGtxfX+RLQba8lCfU3zgABMJh6zUBmcQlPQNEmzRELPng+Cv2gWbNmoFsn8W7ViOw+hOqQz5gSmmSHVoyi4UEhBS5pSwqXKDE6/8W7inA/sONO/j4AXOIOqpKqijTL1NX1ReYp4QFJ51XmUGJH30DhWmxOu0ojyqb0QP7RRrd1TzpOA4DHTIU2xvpLkFNz934WtAoB3Hoi4WClf4l97vK22/Re3iP0FIfPUFoDwDYxZ8mIT+fNohmgduoIAbSk= mailo@fedora"
  description = "ssh-keygen -t ed25519"
}


###os vars
variable "os_family" {
  type = string
  default = "centos-stream-8"
}

variable "os_image" {
  type = string
  default = "fd8hhtemghrl8qptlnfu"
}
