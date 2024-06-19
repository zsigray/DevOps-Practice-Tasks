# Define output variables to display useful information after the infrastructure is created
output "vpc_id" {
  description = "The ID of the VPC."
  value       = aws_vpc.my_vpc.id
}

output "subnet_id" {
  description = "The ID of the subnet."
  value       = aws_subnet.my_subnet.id
}

output "instance_id" {
  description = "The ID of the EC2 instance."
  value       = aws_instance.my_instance.id
}

output "bucket_arn" {
  description = "The ARN of the S3 bucket."
  value       = aws_s3_bucket.my_bucket.arn
}
