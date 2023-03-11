resource "aws_s3_bucket" "b" {
  bucket = "dhd"

  tags = {
    Name        = "My_bucket"
    Environment = "Dev"
  }
}
