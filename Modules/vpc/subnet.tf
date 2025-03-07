resource "aws_subnet" "ziyo_subnet_public" {
  vpc_id            = aws_vpc.ziyo_vpc.id
  cidr_block        = var.public_subnet_cidr_block_1
  availability_zone = "us-east-1a"

  tags = {
    environment = "public"
    Name        = "${var.environment}-subnet1"
  }
}

resource "aws_subnet" "ziyo_subnet_public_2" {
  vpc_id            = aws_vpc.ziyo_vpc.id
  cidr_block        = var.public_subnet_cidr_block_2
  availability_zone = "us-east-1a"

  tags = {
    environment = "public"
    Name        = "${var.environment}-subnet2"

  }
}

resource "aws_subnet" "ziyo_subnet_private" {
  vpc_id     = aws_vpc.ziyo_vpc.id
  cidr_block = var.private_subnet_cidr_block
    availability_zone = "us-east-1c"

  tags = {
    environment = "Private"
    Name        = "${var.environment}-private"
  }
}


//sg

resource "aws_security_group" "allow_tls" {
  name        = "${var.environment}-allow-tls"
  description = "Allow TLS inbound traffic and all outbound traffic in ${var.environment}"
  vpc_id      = aws_vpc.ziyo_vpc.id
  tags = {
    Name = "${var.environment}-sg"
  }

}


resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "0.0.0.0/0"

  from_port   = 0
  ip_protocol = "tcp"
  to_port     = 0
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 0
  ip_protocol       = "tcp"
  to_port           = 0
}




