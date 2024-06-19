# Define an EC2 instance resource
resource "aws_instance" "my_instance" {
  ami           = "ami-0c55b159cbfafe1f0"  # Specify the AMI ID (Ubuntu 18.04 in this case)
  instance_type = "t2.micro"  # Specify the instance type

  subnet_id              = aws_subnet.my_subnet.id  # Reference the subnet ID
  security_groups        = [aws_security_group.my_security_group.name]  # Reference the security group

  tags = {
    Name = "my-instance"  # Tag the instance with a name
  }
}
