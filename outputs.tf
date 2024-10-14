output "instance_id" {
  value       = linode_instance.shadowsocksVM.id
  description = "id of created instance"
}

output "instance_ip_addr" {
  value       = linode_instance.shadowsocksVM.ip_address
  description = "Public IP address of linode instance"
}



