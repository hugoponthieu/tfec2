module "sns" {
  source = "./createSNSFile"
  emails =  var.emails
  sns_name = var.sns_name
}
module "lambda" {
  source = "./createLambda"
  sns_arn = module.sns.sns_arn_out
  sended_notification = var.sended_notification
  lambda_name = var.lambda_name
  lambda_role_name = var.lambda_role_name
}