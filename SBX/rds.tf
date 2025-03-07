# module "rds" {
#   source                 = "../Modules/rds"
#   environment            = "sbx"
#   db_name                = "ziyo"
#   username               = "tsering"
#   vpc_security_group_ids = [module.vpc.vpc_sg_id]
#   rds_subnet_ids = [module.vpc.public_subnet_1,module.vpc.private_subnet_1]

# }