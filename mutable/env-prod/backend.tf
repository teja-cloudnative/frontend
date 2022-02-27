terraform {
  backend "s3" {
    bucket = "terraform-teja"
    key    = "mutable/frontend/prod/terraform.tfstate"
    region = "us-east-1"
  }
}
