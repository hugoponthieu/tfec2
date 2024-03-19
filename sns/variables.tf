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

#Erreur lors de l'éxécution car le string d'un ARN contient des 
#caractères non supporter
# variable "lambda_role_arn" {
#   type    = string
#   default = "arn:aws:iam::767397869331:instance-profile/LabInstanceProfile"
# }

#Je passe donc le nom du rôle voulu 
#et l'ARN sera resolve dans une data source

variable "lambda_role_name" {
  type    = string
  default = "LabRole"
}