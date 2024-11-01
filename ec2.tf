resource "aws_instance" "app_server" {
  ami           = "ami-0acc77abdfc7ed5a6"
  instance_type = "t2.micro"

  tags = {
    Name = "sandboxTestInstance"
  }
}
