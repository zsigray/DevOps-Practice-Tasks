# Configure Terraform to use a remote backend for state storage
terraform {
  backend "s3" {
    bucket = "my-terraform-state-bucket"  # S3 bucket for storing Terraform state
    key    = "terraform.tfstate"          # Path to the state file within the bucket
    region = "us-west-2"                  # AWS region for the bucket
  }
}
