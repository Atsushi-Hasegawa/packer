resource "aws_ecs_service" "ecs_service" {
  name            = "ecs_service"
  cluster         = "${aws_ecs_cluster.default_cluster.id}"
  desired_count   = 1
  task_definition = "${aws_ecs_task_definition.default_task.family}:${max("${aws_ecs_task_definition.default_task.revision}", "${data.aws_ecs_task_definition.default_task.revision}")}"
}
