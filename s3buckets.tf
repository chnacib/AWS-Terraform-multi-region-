resource "aws_s3_bucket" "dev0" {
  bucket = "s3-dev0"
  acl = "private"

  tags = {
    Name        = "S3-dev0"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "homologacao-chnacib" {
  bucket = "s3-chnacib-homologacao"
  acl = "private"

  tags = {
    Name        = "s3-chnacib-homologacao"
    Environment = "s3-chnacib-homologacao"
  }
}