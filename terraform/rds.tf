resource "aws_db_instance" "coursework-rds" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "coursework"
  skip_final_snapshot  = true
  publicly_accessible  = true
  username             = "coursework"
  password             = "coursework"
  parameter_group_name = "default.mysql5.7"

  tags = {
    "Name" = "coursework-rds"
  }
}
