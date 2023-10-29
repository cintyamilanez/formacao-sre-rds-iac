resource "aws_db_subnet_group" "wordpress_db_subnet_group" {
  name        = "wordpress_db_subnet_group"
  description = "wordpress_db_subnet_group"
  subnet_ids = [
    data.aws_subnet.wordpress_private_subnet_1.id,
    data.aws_subnet.wordpress_private_subnet_2.id
  ]
}