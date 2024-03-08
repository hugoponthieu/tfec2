resource "aws_instance" "hogux" {
  ami                  = data.aws_ami.amazon.id
  instance_type        = var.instance_type
  iam_instance_profile = var.role
  tags = {
    Name = var.ec2_name
  }
}
