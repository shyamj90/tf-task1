provider "aws" {
  
}

resource "aws_instance" "my_instance_virginia" {
  ami = "ami-07860a2d7eb515d9a"
  instance_type = "t3.micro"
  region = "us-east-1"
  security_groups = ["launch-wizard-1"]
  user_data = <<-EOF
              #!/bin/bash
              sudo dnf update -y
              sudo dnf install nginx -y
              sudo systemctl enable nginx
              sudo systemctl start nginx
              EOF
  tags = {
    Name="tf-instance-virginia"
  }
}

resource "aws_instance" "my_instance_ohio" {
  ami = "ami-0199d4b5b8b4fde0e"
  instance_type = "t3.micro"
  region = "us-east-2"
  security_groups = ["launch-wizard-9"]
  user_data = <<-EOF
              #!/bin/bash
              sudo dnf update -y
              sudo dnf install nginx -y
              sudo systemctl enable nginx
              sudo systemctl start nginx
              EOF
  tags = {
    Name="tf-instance-ohio"
  }
}

