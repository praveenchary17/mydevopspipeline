resource "aws_instance" "ec2_instance" {
  ami           = "ami-06e46074ae430fba6"
  instance_type = "t2.micro"
  subnet_id     = "subnet-064b017ba64e7a4ff"
  vpc_security_group_ids = "sg-08bcea0cf4ebeea3a"
  key_name = "mydevopspipeline"
  tags = {
    Name = "myec2instance"
    app = "myapp"
  }
}
