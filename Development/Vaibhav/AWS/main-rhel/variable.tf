variable "AWS_REGION" {
  type = string
  default = "us-east-1"
}

variable "Number_of_Instances" {
    type = number
    default = 1
    description = "Total Number of instances"
    validation {
      condition = var.Number_of_Instances < 5 || var.Number_of_Instances > 0
      error_message = " Value must be between 0 and 5."
    }
}

variable "Instance_Type" {
  type = string
  default = "t2.micro"
  # enum = ["t2.micro","t2.medium"]
}

variable "images" {
  type = map

  default ={
    "us-east-1" = "ami-0c7c3a836cdb66103"
  } 
}