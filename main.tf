data "aws_secretsmanager_secret" "this" {
  name = var.name
}

data "aws_secretsmanager_secret_version" "this" {
  secret_id = data.aws_secretsmanager_secret.this.id
}
