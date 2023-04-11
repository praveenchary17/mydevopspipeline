module "ec2_instance" {
  source = "modules/"

  name                 = "my-ec2-instance"
  ami                  = var.ami_id
  instance_type        = var.instance_type
  subnet_id            = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids
  key_name             = var.key_name
}
