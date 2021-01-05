provider "aws" {
    version = "2.69.0"
    region = "us-east-1"
}
 # instance types
variable "instance_type" {
  description = "AWS instance type"
  default     = "t2.micro"
}

resource "aws_instance" "rhelvm1" {
    ami           = "ami-0c7c3a836cdb66103"
    instance_type = "t2.micro"
    availability_zone = "us-east-1a"
}