output "public_subnet_1" {
  value = aws_subnet.ziyo_subnet_public.id
}

output "public_subnet_2" {
  value = aws_subnet.ziyo_subnet_public_2.id
  
}
output "private_subnet_1" {
  value = aws_subnet.ziyo_subnet_private.id
}

output "vpc_sg_id" {
  value = aws_security_group.allow_tls.id

}