terraform {
  
  backend "s3" {
    bucket = "terraform-state-storage-01"
    key = "terraform.tfstate"
    region = "us-east-1"
    encrypt = true
  }
}