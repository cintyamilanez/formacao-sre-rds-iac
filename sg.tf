resource "aws_security_group" "wordpress_sg" {
  name_prefix = "example"
  vpc_id      = data.aws_vpc.wordpress_vpc.id

  ingress {
    from_port   = var.mysql_port
    to_port     = var.mysql_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_db_subnet_group" "wordpress_db_subnet_group" {
  name        = "example"
  description = "example"
  subnet_ids = [
    data.aws_subnet.wordpress_private_subnet_1.id,
    data.aws_subnet.wordpress_private_subnet_2.id
  ]
}