variable "role" {
  type    = string
  default = "EC2InstanceRole"
}
variable "ec2_name" {
  type    = string
  default = "amazonHogux"
}

variable "instance_type" {
  type    = string
  default = "t3.nano"
}
