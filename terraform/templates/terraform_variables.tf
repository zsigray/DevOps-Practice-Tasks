# Define variables for dynamic configuration
variable "aws_region" {
  description = "The AWS region to create resources in."
  default     = "us-west-2"
}

variable "instance_type" {
  description = "The type of instance to create."
  default     = "t2.micro"
}
