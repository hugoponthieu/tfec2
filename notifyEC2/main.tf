module "sns" {
  source   = "../sns/createSNSFile"
  sns_name = "notifyEc2"
  emails   = ["hugopont08@gmail.com"]
}

module "lambda" {
  source              = "../sns/createLambda"
  lambda_name         = var.lambda_name
  lambda_role_name    = "LabRole"
  sns_arn             = module.sns.sns_arn_out
  sended_notification = "A new ec2 has been launched"
}

module "eventRule" {
  source      = "../watchEC2/event_rule"
  lambda_arn  = module.lambda.lambda_arn
  lambda_name = var.lambda_name
}
