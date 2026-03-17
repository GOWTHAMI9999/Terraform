provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0ddda618e961f2270"  # ✅ Amazon Linux 2 (us-east-2)
  instance_type = "t2.micro"
}
