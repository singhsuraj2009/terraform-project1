# 🚀 AWS EC2 Infrastructure with Terraform Modules

A modular Terraform project to provision AWS EC2 instances with automated SSH key pair generation and security group configuration.

---

## 🎯 Overview

This project demonstrates Infrastructure as Code (IaC) best practices using Terraform to:
- Provision EC2 instances on AWS
- Automatically generate and manage SSH key pairs
- Configure security groups for secure access
- Use modular design for reusability and maintainability

**Use Case:** Deploy an workstation on AWS with automated infrastructure provisioning.

---

## ✨ Features

- ✅ **Modular Architecture** - Reusable Terraform modules
- ✅ **Automated Key Generation** - RSA 4096-bit SSH keys
- ✅ **Security Group Management** - Preconfigured firewall rules
- ✅ **EC2 Instance Provisioning** - Automated server deployment
- ✅ **Local Key Storage** - Private/public keys saved locally
- ✅ **Parameterized Configuration** - Easy customization via variables
- ✅ **Output Management** - Important information readily available
- ✅ **Best Practices** - Following AWS and Terraform standards

---

## 📋 Prerequisites

Before you begin, ensure you have the following installed:

| Tool | Version | Installation |
|------|---------|--------------|
| **Terraform** | >= 1.0 | [Download](https://www.terraform.io/downloads) |
| **AWS CLI** | >= 2.0 | [Download](https://aws.amazon.com/cli/) |

---

## AWS Configuration

1. **AWS Account** - Active AWS account
2. **IAM User** - With programmatic access
3. **IAM Permissions** - Required policies:
   - `AmazonEC2FullAccess`
   - `IAMReadOnlyAccess`
4. **Configure AWS CLI:**
  bash
  aws configure

---

## 🎯 Overview
## Project Structure

```
terraform-aws-ec2/
│
├── README.md                    # This file
├── .gitignore                   # Git ignore file
├── main.tf                      # Root module configuration
├── variables.tf                 # Input variables
├── outputs.tf                   # Output values
├── terraform.tfvars             # Variable values (optional)
│
└── modules/
    ├── key-pair/
    │   ├── main.tf              # Key pair resources
    │   ├── variables.tf         # Module variables
    │   └── outputs.tf           # Module outputs
    │
    ├── security-group/
    │   ├── main.tf              # Security group resources
    │   ├── variables.tf         # Module variables
    │   └── outputs.tf           # Module outputs
    │
    └── ec2-instance/
        ├── main.tf              # EC2 instance resources
        ├── variables.tf         # Module variables
        └── outputs.tf           # Module outputs
```

---

## Usage Commands

### Initialize Terraform
terraform init

### Validate Configuration
terraform validate

### Plan Infrastructure
terraform plan

### Apply Infrastructure
terraform apply -auto-approve

### Destroy Infrastructure
terraform destroy -auto-approve

### Show Outputs
terraform output

---
