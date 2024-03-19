module "ec2" {
  for_each = toset(var.ec2S)
  source   = "../ec2/module"
  ec2_name = each.value.name
}
