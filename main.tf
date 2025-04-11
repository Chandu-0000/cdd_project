provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-00a929b66ed6e0de6"  # Example Amazon Linux AMI
  instance_type = "t2.micro"
}
