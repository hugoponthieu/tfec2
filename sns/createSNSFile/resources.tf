resource "aws_sns_topic" "notifier" {
  name = var.sns_name
}

resource "aws_sns_topic_subscription" "add_email" {
  for_each  = toset(var.emails)
  topic_arn = aws_sns_topic.notifier.arn
  protocol  = "email"
  endpoint  = each.key
}
