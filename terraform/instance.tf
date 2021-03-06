resource "aws_instance" "linux-instance" {
  ami           = "ami-06ec8443c2a35b0ba"
  instance_type = "t2.micro"

  subnet_id = aws_subnet.coursework-subnet-public-3.id

  vpc_security_group_ids = [aws_security_group.coursework-all.id]

  key_name = "kubeitea"

  tags = {
    "Name" = "linux-instance"
  }

  depends_on = [
    aws_db_instance.coursework-rds,
  ]
}