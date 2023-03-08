terraform {
  backend "s3" {
    bucket = "sample-bose-bucket"
    key    = "Terraform/vpc-jenkins"
    region = "us-east-1"
  }
}
