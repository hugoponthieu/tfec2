resource "aws_instance" "hogux" {
  ami                  = data.aws_ami.amazon.id
  instance_type        = "t3.nano"
  iam_instance_profile = var.role
  tags = {
    Name = var.ec2_name
  }
}
