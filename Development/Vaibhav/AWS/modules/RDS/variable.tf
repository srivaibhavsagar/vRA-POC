variable "aws_region" {
  type = string
  default = "us-east-1"
}

variable "availability_zone"{
  type = list(string)
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "rds_instance_count"{
  type = number
  default = 2
}

variable "rds_cluster_name"{
  type = string
  default = "aurora-cluster-demo"
}

variable "rds_instance_class"{
  type = string
  default = "db.r4.large"
}

variable "rds_engine"{
  type = string
  default = "aurora-mysql"
}

variable "rds_engine_version"{
  type = string
  default = "5.7.mysql_aurora.2.03.2"
}

variable "rds_database_name" {
  type = string
  default = "testing"
}

variable "rds_username" {
  type = string
  default = "testing"
}

variable "rds_password" {
  type = string
  default = "Testing-1234"
}

variable "final_snapshot"{
    type = boolean
    default = true
}