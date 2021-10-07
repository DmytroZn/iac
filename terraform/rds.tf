resource "aws_db_instance" "courese_work-rds" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "courese_work"
  skip_final_snapshot  = true
  publicly_accessible  = true
  username             = "courese_work"
  password             = "courese_work"
  parameter_group_name = "default.mysql5.7"

  tags = {
    "Name" = "courese_work-rds"
  }
}
