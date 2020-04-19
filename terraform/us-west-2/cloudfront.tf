
resource "aws_cloudfront_distribution" "site_ssl" {
  enabled = true
  price_class = "PriceClass_100"
  aliases = var.site_cloudfront_aliases
  default_root_object = "index.html"

  default_cache_behavior {
    allowed_methods = ["GET", "HEAD"]
    cached_methods = ["GET", "HEAD"]
    target_origin_id = var.site_cloudfront_origin_id
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      query_string = false
      cookies {
        forward = "none"
      }
    }
  }

  origin {
    domain_name = aws_s3_bucket.site_bucket.bucket_regional_domain_name
    origin_id = var.site_cloudfront_origin_id
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn = var.site_acm_arn
    ssl_support_method = "sni-only"
  }
}