terraform {
  backend "s3" {
    bucket = "sample-bose-bucket"
    key    = "Terraform/vpc"
    region = "us-east-1"
  }
}
