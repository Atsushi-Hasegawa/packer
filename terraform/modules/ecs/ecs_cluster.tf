variable "iam_profile_role" {}
variable "iam_service_role" {}

resource "aws_ecs_cluster" "default_cluster" {
  name = "default-cluster"
}
