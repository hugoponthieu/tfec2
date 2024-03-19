resource "aws_lambda_function" "test_lambda" {
  filename      = "handler.zip"
  function_name = var.lambda_name
  role          = var.lambda_role_arn
  handler       = "handler.handler"

  source_code_hash = data.archive_file.lambda.output_base64sha256

  runtime = "python3.12"

  environment {
    variables = {
      LAMBDA_ARN     = var.sns_arn
      LAMBDA_MESSAGE = var.sended_notification
    }
  }
}
