variable "iam_profile_role" {}

resource "aws_ecs_cluster" "default_cluster" {
  name = "default-cluster"
}
