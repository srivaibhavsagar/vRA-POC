variable "Number_of_Instances" {
    type = number
    default = 1
    description = "Total Number of instances"
}

# variable "RHEL_AMI" {
#     type = string
# }

variable "Instance_Type" {
  type = list(string)
  default = ["t2.micro","t2.medium"]
}

variable "Ami_Id" {
  default = "ami-1c4a4566"
}