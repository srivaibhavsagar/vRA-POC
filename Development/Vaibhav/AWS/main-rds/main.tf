module "rds"{
  source = "../modules/RDS"
  aws_region = var.AWS_REGION
  availability_zone = var.AVAILABILITY_ZONE
  rds_instance_count = var.RDS_INSTANCE_COUNT
  rds_cluster_name = var.RDS_CLUSTER_NAME
  rds_instance_class = var.RDS_INSTANCE_CLASS
  rds_engine =  var.RDS_ENGINE
  rds_engine_version = var.RDS_ENGINE_VERSION
  rds_database_name = var.RDS_DATABASE_NAME
  rds_username = var.RDS_USERNAME
  rds_password = var.RDS_PASSWORD
  final_snapshot = var.FINAL_SNAPSHOT
}