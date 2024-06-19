# Define a VPC resource
resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"  # Define the CIDR block for the VPC

  tags = {
    Name = "my-vpc"  # Tag the VPC with a name
  }
}
