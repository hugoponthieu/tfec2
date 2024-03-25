module "sns" {
  source   = "../sns/createSNSFile"
  sns_name = "notifyEc2"
  emails   = ["hugopont08@gmail.com"]
}

module "lambda" {
  source              = "../sns/createLambda"
  lambda_name         = "notifyEC2"
  lambda_role_name    = "LabRole"
  sns_arn             = module.sns.sns_arn_out
  sended_notification = "notif"
}

module "eventRule" {
  source     = "../watchEC2/event_rule"
  lambda_arn = module.lambda.lambda_arn
}
