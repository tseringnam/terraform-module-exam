resource "aws_vpc" "ziyo_vpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    environment = var.environment
    Name        = "${var.environment}-myvpc"
  }
}

