variable "AWS_REGION" {
  type = string
  default = "us-east-1"
}

variable "AVAILABILITY_ZONE"{
  type = list(string)
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "RDS_INSTANCE_COUNT"{
  type = number
  default = 2
}

variable "RDS_CLUSTER_NAME"{
  type = string
  default = "aurora-cluster-demo"
}

variable "RDS_INSTANCE_CLASS"{
  type = string
  default = "db.r4.large"
}

variable "RDS_ENGINE"{
  type = string
  default = "aurora-mysql"
}

variable "RDS_ENGINE_VERSION"{
  type = string
  default = "5.7.mysql_aurora.2.03.2"
}

variable "RDS_DATABASE_NAME" {
  type = string
  default = "testing"
}

variable "RDS_USERNAME" {
  type = string
  default = "testing"
}

variable "RDS_PASSWORD" {
  type = string
  default = "Testing-1234"
}

variable "FINAL_SNAPSHOT" {
  default = true
}