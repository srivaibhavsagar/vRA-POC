module "rhel" {
  source                 = "../modules/RHEL"
  number_of_instances = var.Number_of_Instances
  instance_type = var.Instance_Type
}
