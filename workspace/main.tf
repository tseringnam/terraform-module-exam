 provider "aws" {
    region = var.region #"us-east-1"
}

resource "aws_instance" "workspace_instace" {
    count = terraform.workspace == "prod" ? 1 : 0 
    ami = var.ami_id  #"ami-05b10e08d247fb927"
    instance_type = var.instance_type#"t2.micro"
    tags = {
        Environment = "${terraform.workspace}-environment"
    }
}