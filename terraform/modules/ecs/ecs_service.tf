resource "aws_ecs_service" "ecs_service" {
  name            = "ecs-service"
  cluster         = "${aws_ecs_cluster.default_cluster.id}"
  task_definition = "${aws_ecs_task_definition.default_task.arn}"
  desired_count   = 1
}
