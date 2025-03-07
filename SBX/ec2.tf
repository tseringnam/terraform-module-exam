# module "ec2" {
#   source             = "../Modules/ec2"
#   environment        = "sbx"
#   vpc_subnet_for_ec2 = module.vpc.public_subnet_1
#   instance_type      = "t2.micro"
#   vpc_security_group = [module.vpc.vpc_sg_id]
# }