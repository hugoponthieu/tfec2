module "ec2" {
  for_each = { for idx, ec2_instance in var.ec2S : idx => ec2_instance }
  source   = "../ec2/module"
  ec2_name = each.value.name
}
