
resource "aws_acm_certificate" "site_cert" {
  domain_name = "tkkno.com"
  subject_alternative_names = ["www.tkkno.com"]
  validation_method = "DNS"
}