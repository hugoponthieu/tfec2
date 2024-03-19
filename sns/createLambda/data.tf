data "archive_file" "lambda" {
  type        = "zip"
  source_file = "handler.py"
  output_path = "handler.zip"
}