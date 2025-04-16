provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-00a929b66ed6e0de6"  # Amazon Linux 2 AMI (update as needed)
  instance_type = "t2.micro"

  tags = {
    Name = "AppServer"
  }
}

output "instance_ip" {
  value = aws_instance.app_server.public_ip
}
