# Define input variables for the Terraform configuration
variable "aws_region" {
  description = "The AWS region to create resources in."
  default     = "us-west-2"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "The CIDR block for the subnet."
  default     = "10.0.1.0/24"
}

variable "availability_zone" {
  description = "The availability zone for the subnet."
  default     = "us-west-2a"
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance."
  default     = "ami-0c55b159cbfafe1f0"  # Ubuntu 18.04 LTS AMI
}

variable "instance_type" {
  description = "The type of instance to create."
  default     = "t2.micro"
}

variable "bucket_name" {
  description = "The name of the S3 bucket."
  default     = "my-unique-bucket-name"
}
