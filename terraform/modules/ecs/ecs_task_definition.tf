data "aws_ecs_task_definition" "default_task" {
  task_definition = "${aws_ecs_task_definition.default_task.family}"
}

resource "aws_ecs_task_definition" "default_task" {
  family       = "default_task"
  network_mode = "bridge"

  container_definitions = <<DEFINITION
[
  {
    "cpu": 1,
    "environment": [],
    "essential": true,
    "image": "809670333157.dkr.ecr.ap-northeast-1.amazonaws.com/sample:0.01",
    "memory": 1,
    "name": "nginx",
    "portMappings": [
      {
        "containerPort": 80,
        "hostPort": 0
      }
    ]
  }
]
DEFINITION
}
