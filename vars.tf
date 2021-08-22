variable "hcloud_token" {
    default = "XXX-YOUR-TOKEN-XXX"
    type    = string
}

variable "ssh_keys" {
    default = ["XXX-YOUR-SSH-KEY-NAME-XXX"]
    type    = list
}

variable "project_name" {
    type = string
}

variable "hcloud_location" {
    default = "nbg1"
    type    = string
}

variable "hcloud_server_type" {
    default = "cx11"
    type    = string
}

variable "faasd_username" {
    default = "admin"
    type    = string
}

variable "faasd_password" {
    default = "jackthegiant"
    type    = string
}