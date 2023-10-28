resource "aws_db_instance" "wordpress_rds" {
  allocated_storage    = var.allocated_storage
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  identifier           = "${var.db_name}-rds"
  db_name              = var.db_name
  username             = var.username
  password             = aws_secretsmanager_secret_version.wp_password_secret_version.secret_string
  parameter_group_name = var.parameter_group_name
  skip_final_snapshot  = var.skip_final_snapshot

  db_subnet_group_name   = aws_db_subnet_group.wordpress_db_subnet_group.name
  vpc_security_group_ids = [aws_security_group.wordpress_sg.id]

  tags = {
    Name = var.db_name
  }
}