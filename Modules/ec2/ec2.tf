resource "aws_instance" "web" {
  ami                         = data.aws_ami.example.image_id
  instance_type               = var.instance_type
  associate_public_ip_address = true
  subnet_id                   = var.vpc_subnet_for_ec2
  key_name                    = "my-key"
  vpc_security_group_ids      = var.vpc_security_group
  ebs_optimized               = var.ebs_optimized
  user_data                   = file("../Modules/ec2/efs.sh")
  tags = {
    Name = "${var.environment}-ec2"
  }
}

