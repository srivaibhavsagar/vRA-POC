provider "aws" {
    version = "2.69.0"
    region = "us-east-1"
}
 # instance types
variable "instance_type" {
  description = "AWS instance type"
  default     = "t2.micro"
}

variable "myTag" {
  description = "My Input Tag"
  default = "terraform-test"
}

resource "aws_instance" "machine1" {
    ami           = "ami-0c7c3a836cdb66103"
    instance_type = "t2.micro"
    availability_zone = "us-east-1b"
    tags = {
      "type" = var.myTag
    }
}
