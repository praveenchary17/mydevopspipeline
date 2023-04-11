variable "name" {}

variable "ami" {}

variable "instance_type" {}

variable "subnet_id" {}

variable "vpc_security_group_ids" {}

variable "key_name" {}

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "ec2_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id

  vpc_security_group_ids = var.vpc_security_group_ids

  key_name = var.key_name

  tags = {
    Name = var.name
  }
}
