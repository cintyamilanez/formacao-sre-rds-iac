resource "random_string" "random_password_wp_db" {
  length  = 8
  special = true
}

resource "random_string" "wp_password_secret_name" {
  length  = 4
  special = false
}

resource "aws_secretsmanager_secret" "wp_password_secret" {
  name        = "wp-password-${random_string.wp_password_secret_name.result}"
  description = "Wordpress database password."
}

resource "aws_secretsmanager_secret_version" "wp_password_secret_version" {
  secret_id     = aws_secretsmanager_secret.wp_password_secret.id
  secret_string = random_string.random_password_wp_db.result
}