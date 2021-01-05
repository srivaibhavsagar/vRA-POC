module "rhel" {
  source                 = "../modules/RHEL"
  number_of_instances = var.Number_of_Instances
  instance_type = var.Instance_Type
  ami_id = var.images[var.AWS_REGION]
}