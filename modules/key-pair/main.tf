# Generate Private Key
resource "tls_private_key" "this" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# Store Public Key in AWS
resource "aws_key_pair" "this" {
  key_name   = var.key_name
  public_key = tls_private_key.this.public_key_openssh
}

# Save Private Key Locally
resource "local_file" "private_key" {
  content         = tls_private_key.this.private_key_pem
  filename        = "${var.key_name}"
  file_permission = "0400"
}

# Save Public Key Locally
resource "local_file" "public_key" {
  content         = tls_private_key.this.public_key_openssh
  filename        = "${var.key_name}.pub"
  file_permission = "0644"
}
