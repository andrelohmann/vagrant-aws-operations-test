/**
 * Create an S3 Bucket as a test resource
 */
resource "aws_s3_bucket" "b" {
  bucket = "${var.prefix}-terraform-s3-test-bucket"
  acl    = "private"

  tags = {
    Name        = "S3 Test Bucket - ${var.prefix}"
  }
}
