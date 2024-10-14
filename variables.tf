variable "linode_API_token" { // environment variable
  type        = string
  description = "linode API token"
  sensitive   = true
}

variable "os_version" {
  type    = string
  default = "linode/ubuntu20.04"
}

variable "label" {
  type    = string
  default = "shodowsocksBox"
}

variable "region" {
  type    = string
  default = "us-central"
}

# see available types: https://api.linode.com/v4/linode/types
variable "type" {
  type    = string
  default = "g6-standard-1"
}

variable "ssh_public_key" { // environment variable
  type        = string
  description = "ssh public key"
  sensitive   = true
}

variable "root_password" { // environment variable
  type        = string
  description = "root user password"
  sensitive   = true
}

variable "stackscript_id" {
  type        = string
  default     = "604068"
  description = "id of shadowsocks stackscript"
}

variable "shadowpassword" { // environment variable
  type        = string
  description = "Shadowsocks Password for host agent"
  sensitive   = true
}

variable "username" { // environment variable
  type        = string
  description = "Limited sudo user for the linode"
  sensitive   = true
}

variable "password" { // environment variable
  type        = string
  description = "Password for the limited sudo user"
  sensitive   = true
}
