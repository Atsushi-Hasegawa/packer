resource "aws_instance" "ecs_instance" {
  ami                         = "ami-a99d8ad5"
  instance_type               = "t2.micro"
  iam_instance_profile        = "${var.iam_profile_role}"
  associate_public_ip_address = "true"
  availability_zone           = "ap-northeast-1a"

  user_data = <<EOF
#!/bin/bash
echo ECS_CLUSTER=default_cluster >> /etc/ecs/ecs.config
EOF
}
