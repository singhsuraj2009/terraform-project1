provider "aws" {
  profile = "default"
  region  = var.aws_region
}

# Key Pair Module
module "key_pair" {
  source   = "./modules/key-pair"
  key_name = var.key_name
}

# Security Group Module
module "security_group" {
  source      = "./modules/security-group"
  sg_name     = var.sg_name
  description = "Security group for SSH access"
}

# EC2 Instance Module
module "ec2_instance" {
  source            = "./modules/ec2-instance"
  instance_type     = var.instance_type
  ami_id            = var.ami_id
  key_name          = module.key_pair.key_name
  security_group_id = module.security_group.security_group_id
  instance_name     = var.instance_name
  
  depends_on = [module.key_pair]
}
