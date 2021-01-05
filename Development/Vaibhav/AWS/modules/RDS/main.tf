resource "aws_rds_cluster_instance" "cluster_instances" {
  count              = var.rds_instance_count
  identifier         = "${var.rds_cluster_name}-${count.index}"
  cluster_identifier = aws_rds_cluster.default.id
  instance_class     = var.rds_instance_class
  engine             = aws_rds_cluster.default.engine
  engine_version     = aws_rds_cluster.default.engine_version
}


resource "aws_rds_cluster" "default" {
  cluster_identifier      = var.rds_cluster_name
  engine                  = var.rds_engine
  engine_version          = var.rds_engine_version
  availability_zones      = var.availability_zone
  database_name           = var.rds_database_name
  master_username         = var.rds_username
  master_password         = var.rds_password
  # backup_retention_period = 5
  # preferred_backup_window = "07:00-09:00"
  skip_final_snapshot = var.final_snapshot
}