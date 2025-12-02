output "instance_id" {
  description = "EC2 Instance ID"
  value       = module.ec2_instance.instance_id
}

output "instance_public_ip" {
  description = "EC2 Public IP"
  value       = module.ec2_instance.public_ip
}

output "private_key_path" {
  description = "Private Key File Path"
  value       = module.key_pair.private_key_path
}

output "security_group_id" {
  description = "Security Group ID"
  value       = module.security_group.security_group_id
}
