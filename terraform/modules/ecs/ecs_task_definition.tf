resource "aws_ecs_task_definition" "default_task" {
  family       = "default-task"
  network_mode = "bridge"

  container_definitions = <<DEFINITION
[
  {
    "cpu": 1,
    "environment": [],
    "essential": true,
    "image": "nginx",
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
