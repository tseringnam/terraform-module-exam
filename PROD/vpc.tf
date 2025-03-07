module "vpc" {
  source                     = "../Modules/vpc"
  environment                = "prod"
  vpc_cidr_block             = "20.10.0.0/16"
  public_subnet_cidr_block_1 = "20.10.10.0/24"
  public_subnet_cidr_block_2 = "20.10.20.0/24"
  private_subnet_cidr_block  = "20.10.30.0/24"
}