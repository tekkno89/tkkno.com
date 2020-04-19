
data "template_file" "bucket_policy" {
  template = file("./templates/BucketPolicy.tpl")

  vars = {
    site-bucket-name = var.site_bucket_name
  }
}