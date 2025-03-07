variable "db_name" {
    default = "ziyo"
}
variable "allocated_storage" {
    default = 10
}
variable "engine_version" {
    default = "12.15"
}
variable "engine" {
    default = "postgres"
}
variable "environment" {}
variable "instance_class" {
    default = "db.t3.micro"
}
variable "username" {
    default = "tsering-user"
}
variable "storage_type" {
    default = "gp2"
}
variable "vpc_security_group_ids" { 
    type = list
}
variable "parameter_group_name" {
  default = "default.postgres12"
}
variable "rds_subnet_ids" {
    type = list 
    default = []
  
}