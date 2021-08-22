output "ipv4_address" {
    value = hcloud_server.web_server.ipv4_address
}

output "username" {
    value = var.faasd_username
}

output "password" {
    value     = var.faasd_password
    sensitive = true
}

output "login_cmd" {
    value     = "faas-cli login -g http://${hcloud_server.web_server.ipv4_address}:8080 -u ${var.faasd_username} -p ${var.faasd_password}"
    sensitive = true
}