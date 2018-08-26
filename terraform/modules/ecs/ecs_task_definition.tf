resource "aws_ecs_task_definition" "default_task" {
  family       = "default-task"
  network_mode = "bridge"

  container_definitions = <<DEFINITION
[
  {
    "environment": [
      {
        "name": "REDIS_HOST",
        "value": "xxxxxxx"
      }
    ],
    "links": [
      "redis"
    ],
    "essential": true,
    "image": "809670333157.dkr.ecr.ap-northeast-1.amazonaws.com/sample:0.01",
    "memory": 128,
    "name": "nginx",
    "portMappings": [
      {
        "containerPort": 80,
        "hostPort": 0
      }
    ]
  },
  {
    "image": "redis",
    "name": "redis",
    "essential": true,
    "memory": 128,
    "portMappings": [
      "containerPort": 6379,
      "hostPort": 0
    ]
  }
]
DEFINITION
}
