# Define an RDS instance resource
resource "aws_db_instance" "my_db_instance" {
  allocated_storage    = 20  # Specify the storage size (in GB)
  engine               = "mysql"  # Specify the database engine
  instance_class       = "db.t2.micro"  # Specify the instance class
  name                 = "mydatabase"  # Specify the database name
  username             = "foo"  # Specify the master username
  password             = "bar"  # Specify the master password
  parameter_group_name = "default.mysql5.7"  # Specify the parameter group
  skip_final_snapshot  = true  # Skip the final snapshot on deletion

  tags = {
    Name = "my-rds-instance"  # Tag the instance with a name
  }
}
