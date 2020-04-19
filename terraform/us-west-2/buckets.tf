
resource "aws_s3_bucket" "site_bucket" {
  bucket = var.site_bucket_name
  acl = "public-read"
  region = var.aws_region
  policy = data.template_file.bucket_policy.rendered

  website {
    index_document = var.site_bucket_index
    error_document = var.site_bucket_404
  }
}