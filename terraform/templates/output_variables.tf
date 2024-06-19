# Define output variables to display useful information
output "instance_id" {
  value = aws_instance.my_instance.id  # Output the EC2 instance ID
}

output "bucket_arn" {
  value = aws_s3_bucket.my_bucket.arn  # Output the S3 bucket ARN
}

output "db_instance_endpoint" {
  value = aws_db_instance.my_db_instance.endpoint  # Output the RDS instance endpoint
}
