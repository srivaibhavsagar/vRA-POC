# ------------------
# REQUIRE A SPECIFIC TERRAFORM VERSION OR HIGHER
# This module is written with 0.12 syntax, which means it is not compatible with any versions below 0.12.
# --------------------

terraform {
  required_version = ">= 0.13"
}


####### RHEL VM ##########

resource "aws_instance" "vm" {
  count = var.number_of_instances
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "VM.${count.index}"
  }
}