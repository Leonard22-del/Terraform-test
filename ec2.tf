resource "aws_instance" "web" {
  ami           = ami-0166fe664262f664c
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
