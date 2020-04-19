
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
  type = string
}

variable "site_acm_arn" {
  description = "ARN of ACM certificate to use with Cloudfront"
  type = string
}

variable "site_cloudfront_origin_id" {
  description = "Origin ID to use for Cloudfront Distro"
  type = string
}

variable "site_cloudfront_aliases" {
  description = "List of aliases to apply to Cloudfront Distro"
  type = list
}