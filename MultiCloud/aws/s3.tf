resource "aws_s3_bucket" "main" {
  bucket = "${var.project}-bucket"
  tags   = var.tags
}
