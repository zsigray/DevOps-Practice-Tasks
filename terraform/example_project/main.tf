# Provider configuration
provider "aws" {
  region = var.aws_region
}

# VPC configuration
resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "my-vpc"
  }
}

# Subnet configuration
resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.subnet_cidr
  availability_zone = var.availability_zone

  tags = {
    Name = "my-subnet"
  }
}

# Security Group configuration
resource "aws_security_group" "my_security_group" {
  vpc_id = aws_vpc.my_vpc.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "my-security-group"
  }
}

# EC2 Instance configuration
resource "aws_instance" "my_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type

  subnet_id              = aws_subnet.my_subnet.id
  security_groups        = [aws_security_group.my_security_group.name]

  tags = {
    Name = "my-instance"
  }
}

# S3 Bucket configuration
resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name

  tags = {
    Name = "my-s3-bucket"
  }
}
