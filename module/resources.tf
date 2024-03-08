resource "aws_instance" "web" {
  ami           = data.aws_ami.amazon.id
  instance_type = "t3.nano"

  tags = {
    Name = "HelloWorld"
  }
}
