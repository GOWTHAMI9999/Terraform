provider "aws" {
  region = "us-east-2"
}

# Security Group (SSH allow)
resource "aws_security_group" "allow_ssh" {
  name = "allow_ssh"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# EC2 Instance
resource "aws_instance" "example" {
  ami           = "ami-0198cdf7458a7a932"
  instance_type = "t2.micro"

  key_name        = "saikey"
  security_groups = [aws_security_group.allow_ssh.name]

  tags = {
    Name = "Terraform-EC2"
  }
}
