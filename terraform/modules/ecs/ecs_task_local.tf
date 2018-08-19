resource "aws_ecs_task_definition" "local_task" {
  family       = "local-task"
  network_mode = "bridge"

  container_definitions = <<DEFINITION
[
  {
    "cpu": 1,
    "environment": [],
    "essential": true,
    "image": "809670333157.dkr.ecr.ap-northeast-1.amazonaws.com/sample:0.01",
    "memory": 1,
    "name": "local",
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
