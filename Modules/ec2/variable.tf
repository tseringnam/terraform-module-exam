variable "environment" {}
variable "vpc_subnet_for_ec2" {}
variable "instance_type" {
  type    = string
  default = "t2.micro"

}
variable "ebs_optimized" {
  default = false

}
variable "vpc_security_group" {
    type = list

}

