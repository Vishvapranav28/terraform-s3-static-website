output "website_endpoint" {
  description = "The endpoint of the S3 bucket website"
  value       = aws_s3_bucket.my_bucket.website_endpoint
}