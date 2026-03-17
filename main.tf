provider "aws" {
    region = "us-east-1"

}
resource "aws-instance" "example" {
    ami = "ami-0198cdf7458a7a932"
    instance_type = "t2.micro"
}