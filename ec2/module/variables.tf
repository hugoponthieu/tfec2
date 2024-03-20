variable "role" {
  type    = string
  default = "EMR_EC2_DefaultRole"
}
variable "ec2_name" {
  type    = string
  default = "amazonHogux"
}

variable "instance_type" {
  type    = string
  default = "t3.nano"
}
