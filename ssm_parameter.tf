resource "aws_ssm_parameter" "aws_secretsmanager_secret" {
  name  = "/wordpress/aws_secretsmanager_secret"
  type  = "SecureString"
  value = aws_secretsmanager_secret.wp_password_secret.id
}

resource "aws_ssm_parameter" "wp_db_url" {
  name  = "/wordpress/wp_db_url"
  type  = "SecureString"
  value = aws_db_instance.wordpress_rds.address
}