module "instance_role" {
  source = "../../../modules/iam"
}

module "default_cluster" {
  source           = "../../../modules/ecs"
  iam_profile_role = "${module.instance_role.instance_profile}"
  iam_service_role = "${module.instance_role.iam_role}"
}
