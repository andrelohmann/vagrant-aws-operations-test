/**
 * S3 Bucket
 */
output "s3-bucket" {
  value = {
    id = aws_s3_bucket.b.id
    arn = aws_s3_bucket.b.arn
    bucket_domain_name = aws_s3_bucket.b.bucket_domain_name
  }
}
