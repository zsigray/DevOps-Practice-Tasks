# Define a security group resource within the VPC
resource "aws_security_group" "my_security_group" {
  vpc_id = aws_vpc.my_vpc.id  # Reference the VPC ID

  ingress {
    from_port   = 80  # Allow incoming traffic on port 80 (HTTP)
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow from any IP address
  }

  egress {
    from_port   = 0  # Allow all outgoing traffic
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "my-security-group"  # Tag the security group with a name
  }
}
