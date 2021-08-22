#cloud-config
runcmd:
- sudo su -
- apt update -y
- apt upgrade -y
- apt install git -y
- mkdir -p /var/lib/faasd/secrets/
- echo ${faasd_username} > /var/lib/faasd/secrets/basic-auth-user
- echo ${faasd_password} > /var/lib/faasd/secrets/basic-auth-password
- git clone https://github.com/openfaas/faasd --depth=1
- ./faasd/hack/install.sh