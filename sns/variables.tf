variable "sns_name" {
  type    = string
  default = "incredibleSNS"
}

variable "lambda_name" {
  type    = string
  default = "incredibleLambda"
}

variable "emails" {
  type    = list(string)
  default = ["hugopont08@gmail.com", "hugo.ponthieu@etu.umontpellier.fr"]
}
# theo.ponthieu@hotmail.fr

variable "sended_notification" {
  type    = string
  default = "This SNS file work pretty well"
}