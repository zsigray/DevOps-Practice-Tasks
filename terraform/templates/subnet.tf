# Define a subnet resource within the VPC
resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id  # Reference the VPC ID
  cidr_block        = "10.0.1.0/24"  # Define the CIDR block for the subnet
  availability_zone = "us-west-2a"  # Specify the availability zone

  tags = {
    Name = "my-subnet"  # Tag the subnet with a name
  }
}
