variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "key_name" {
  description = "SSH Key Name"
  type        = string
  default     = "workstation-key"
}

variable "sg_name" {
  description = "Security Group Name"
  type        = string
  default     = "allow-ssh"
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "t3.micro"
}

variable "ami_id" {
  description = "AMI ID for EC2 Instance"
  type        = string
  default     = "ami-0ecb62995f68bb549"
}

variable "instance_name" {
  description = "EC2 Instance Name Tag"
  type        = string
  default     = "Workstation"
}
