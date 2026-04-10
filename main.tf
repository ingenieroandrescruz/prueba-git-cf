# Raíz del despliegue. Backend S3: tras bootstrap/, usa backend.hcl.example o -backend-config en CI.
# Migración desde CloudFormation: elimina el stack prueba-cf-github (o importa la instancia) antes de asumir el estado con Terraform.

terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {}
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = var.default_tags
  }
}

module "ec2" {
  source = "./modules/ec2_instance"

  ami_id        = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  instance_name = var.instance_name
}
