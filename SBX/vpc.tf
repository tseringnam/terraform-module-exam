# module "vpc" {
#   source                     = "../Modules/vpc"
#   environment                = "sbx"
#   vpc_cidr_block             = "10.10.0.0/16"
#   public_subnet_cidr_block_1 = "10.10.10.0/24"
#   public_subnet_cidr_block_2 = "10.10.20.0/24"
#   private_subnet_cidr_block  = "10.10.30.0/24"
# }