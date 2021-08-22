terraform {
    required_providers {
        hcloud = {
            source = "hetznercloud/hcloud"
            version = "~> 1.30"
        }
    }
}

provider "hcloud" {
    token = var.hcloud_token
}

data "template_file" "cloud_init" {
  template = "${file("cloud-init.tpl")}"
  vars     = {
    faasd_username = var.faasd_username  
    faasd_password = var.faasd_password,
  }
}

resource "hcloud_server" "web_server" {
    name        = "debian-${var.project_name}"
    image       = "debian-11"
    server_type = var.hcloud_server_type
    location    = var.hcloud_location
    ssh_keys    = var.ssh_keys
    user_data   = data.template_file.cloud_init.rendered
}
