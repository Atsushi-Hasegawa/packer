output "instance_profile" {
  value = "${aws_iam_instance_profile.instance_role.name}"
}

output "iam_role" {
  value = "${aws_iam_role.ecs_service_role.arn}"
}
