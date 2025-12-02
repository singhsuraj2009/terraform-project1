resource "aws_security_group" "this" {
  name        = var.sg_name
  description = var.description

  # Egress Rule - Allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic"
  }

  # Ingress Rule - Allow SSH
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.allowed_cidr_blocks
    description = "Allow SSH access"
  }

  tags = {
    Name = var.sg_name
  }
}
