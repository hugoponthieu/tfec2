data "aws_iam_role" "lambda_role" {
  name = var.lambda_role_name
}

data "archive_file" "lambda" {
  type        = "zip"
  source_file = "handler.py"
  output_path = "handler.zip"
}