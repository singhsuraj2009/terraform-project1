output "key_name" {
  description = "SSH Key Pair Name"
  value       = aws_key_pair.this.key_name
}

output "private_key_pem" {
  description = "Private Key in PEM format"
  value       = tls_private_key.this.private_key_pem
  sensitive   = true
}

output "public_key_openssh" {
  description = "Public Key in OpenSSH format"
  value       = tls_private_key.this.public_key_openssh
}

output "private_key_path" {
  description = "Path to private key file"
  value       = local_file.private_key.filename
}
