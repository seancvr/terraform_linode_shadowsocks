# configure linode provider from Terraform registry
terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "2.29.0"
    }
  }
}
# Set API token
provider "linode" {
  token = var.linode_API_token
}

# Create linode resource
resource "linode_instance" "shadowsocksVM" {
  image           = var.os_version
  label           = var.label
  region          = var.region
  type            = var.type
  authorized_keys = [chomp(var.ssh_public_key)]
  root_pass       = var.root_password

  stackscript_id = var.stackscript_id

  # stackscript variables
  stackscript_data = {
    shadowpassword = var.shadowpassword
    username       = var.username
    password       = var.password
  }
}