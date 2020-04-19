
variable "aws_region" {
  description = "AWS region to deploy to"
  type = string
}

variable "site_bucket_name" {
  description = "Bucket name for site"
  type = string
}

variable "site_bucket_index" {
  description = "S3 static site index file"
  type = string
}

variable "site_bucket_404" {
  description = "S3 static site 404 file"
}