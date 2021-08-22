variable "hcloud_token" {
    // default = "XXX-YOUR-TOKEN-XXX"
    default = "5j619BPQlDDDt85mRRosXBdO2x2MUja1MEeqKN1rvIrWoT8AeZHuD5Yd4FCTjXcD"
    type    = string
}

variable "ssh_keys" {
    // default = ["XXX-YOUR-SSH-KEY-NAME-XXX"]
    default = ["Talha"]
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