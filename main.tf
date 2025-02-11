provider "aws" {
  region = "us-east-1"
  profile = "default"
}

resource "aws_s3_bucket" "mi_primer_bucket" {
  bucket = "mi-bucket-prueba-01"
  acl    = "private"
}

output "s3_bucket_name" {
  value = aws_s3_bucket.mi_primer_bucket.bucket
}

output "bucket_arn" {
  value = aws_s3_bucket.mi_primer_bucket.arn
}

output "bucket_url"{
    value = aws_s3_bucket.mi_primer_bucket.bucket_domain_name
}
