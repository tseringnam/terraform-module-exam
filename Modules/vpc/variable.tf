
//vpc
variable "vpc_cidr_block" {
  type    = string
  nullable = false
}


//subnet 

variable "public_subnet_cidr_block_1" {}
variable "public_subnet_cidr_block_2" {}
variable "private_subnet_cidr_block" {}

variable "environment" {
    nullable = false  
}





