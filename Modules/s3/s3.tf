
locals {
  bucket_name_suffix = "ziyotek-2025-bucket"
}


resource "aws_s3_bucket" "ziyotek_bucket" {
  count = 2 
  bucket = "${var.environment}-${local.bucket_name_suffix}-reports-${count.index}"

  tags = {
    Name        = "ziyotek"
    environment = var.environment

  }
}



