variable "ec2S" {
  type = list(object({
    name          = string
    instance_type = optional(string, "t3.nano")
    instance_role = optional(string, "EMR_EC2_DefaultRole")
  }))
  default = [{
    name = "first"
    }, {
    name = "second"
  }]
}


