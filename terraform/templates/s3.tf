# Define an S3 bucket resource
resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name"  # Specify a unique name for the bucket

  tags = {
    Name = "my-s3-bucket"  # Tag the bucket with a name
  }
}
