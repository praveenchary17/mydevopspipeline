terraform {
  required_version = ">= 0.13"
}

provider "aws" {
  region = var.aws_region
}

module "ec2_instance" {
  source = "./ec2-instance"

  name                 = "my-ec2-instance"
  ami                  = var.ami_id
  instance_type        = var.instance_type
  subnet_id            = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids
  key_name             = var.key_name
}

terraform {
  backend "s3" {
    bucket = "my-terraform-state-bucket"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
