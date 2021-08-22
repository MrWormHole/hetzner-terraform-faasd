## Prerequisites
* Faas-cli installed in your client computer
* Terraform
* SSH key and key name created in Hetzner Cloud
* Hetzner Cloud account and API access token

## Create faasd instance with terraform
```bash
terraform init
terraform plan
terraform apply --auto-approve
terraform output --json
```

## SSH into the instance and check faas-cli and faasd running
```bash
ssh root@[SERVER_IP_ADDRESS]
faas-cli version
systemctl status containerd.service
systemctl status faasd.service
```

## Teardown the infra
```bash
terraform destroy 
```