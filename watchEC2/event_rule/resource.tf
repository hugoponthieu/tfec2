resource "aws_cloudwatch_event_rule" "console" {
  name = "capture-ec2-running"
  event_pattern = jsonencode({
    "source" : ["aws.ec2"],
    "detail-type" : ["EC2 Instance State-change Notification"],
    "detail" : {
      "state" : ["running"]
    }
  })
}

resource "aws_cloudwatch_event_target" "lambda" {
  rule = aws_cloudwatch_event_rule.console.name
  arn  = var.lambda_arn
}
