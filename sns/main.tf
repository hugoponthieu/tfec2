module "sns" {
  source = "./createSNSFile"
}
module "lambda" {
  source = "./createLambda"
  sns_arn = module.sns.sns_arn_out
}