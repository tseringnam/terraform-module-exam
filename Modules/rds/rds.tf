resource "aws_db_instance" "default" {
  allocated_storage    = var.allocated_storage#10
  db_name              = "${var.environment}-ziyo"
  engine               = var.engine #"postgres"
  engine_version       = var.engine_version #"12.15"
  instance_class       = var.instance_class
  username             = var.username
  password             = aws_ssm_parameter.foo.value
  parameter_group_name = var.parameter_group_name  #"default.postgres12"
  skip_final_snapshot  = true
  #final_snapshot_identifier = "terraform-20240516041642005800000001-snapshot"
  db_subnet_group_name = aws_db_subnet_group.db-sub-grp.id
  vpc_security_group_ids = var.vpc_security_group_ids #[aws_security_group.allow_tls.id]
  storage_type = "gp2"

}

resource aws_db_subnet_group "db-sub-grp"{
  name = "${var.environment}-ziyo-subnet-group"
  subnet_ids = var.rds_subnet_ids

}

resource "random_password" "password" {
  length           = 10
  special          = false
}

resource "aws_ssm_parameter" "foo" {
  name  = "${var.environment}-ziyo_class_rds_pass"
  type  = "SecureString"
  value = random_password.password.result
}
