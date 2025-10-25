provider "aws" {
  
}

resource "aws_instance" "my_instance_virginia" {
  ami = "ami-07860a2d7eb515d9a"
  instance_type = "t3.micro"
  region = "us-east-1"
  tags = {
    Name="tf-instance-virginia"
  }
}

resource "aws_instance" "my_instance_ohio" {
  ami = "ami-0199d4b5b8b4fde0e"
  instance_type = "t3.micro"
  region = "us-east-2"
  tags = {
    Name="tf-instance-ohio"
  }
}

