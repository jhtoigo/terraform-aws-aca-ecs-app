region = "us-east-1"

cluster_name = "linuxtips-aca-ecs"

service_name = "linuxtips-app"

service_port = 8080

service_cpu = 256

service_memory = 512

ssm_vpc_id = "/linuxtips-aca-ecs/vpc/vpc_id"

ssm_listener = "/linuxtips-aca-ecs/ecs/lb/listenernet"

ssm_private_subnet_1 = "/linuxtips-aca-ecs/vpc/subnet-private-us-east-1a"

ssm_private_subnet_2 = "/linuxtips-aca-ecs/vpc/subnet-private-us-east-1b"

ssm_private_subnet_3 = "/linuxtips-aca-ecs/vpc/subnet-private-us-east-1c"

ssm_alb = "/linuxtips-aca-ecs/ecs/lb/id"

environment_variables = [
  {
    name  = "FOO"
    value = "BAR"
  },
  {
    name  = "PING"
    value = "PONG"
  }
]

capabilities = ["EC2", "FARGATE"]

service_healthcheck = {
  healthy_thershold   = 3
  unhealthy_thershold = 10
  timeout             = 10
  interval            = 60
  matcher             = "200-399"
  path                = "/healthcheck"
  port                = 8080
}

service_launch_type = [{
  capacity_provider = "FARGATE"
  weight            = 50
  },
  {
    capacity_provider = "FARGATE_SPOT"
    weight            = 50
}]

service_task_count = "3"

service_hosts = [
  "app.linuxtips.demo"
]

scale_type   = "requests_tracking"
task_minimum = 3
task_maximum = 12

scale_out_cpu_threshold       = 50
scale_out_adjustment          = 2
scale_out_comparison_operator = "GreaterThanOrEqualToThreshold"
scale_out_statistic           = "Average"
scale_out_period              = 60
scale_out_evaluation_periods  = 2
scale_out_cooldown            = 60

scale_in_cpu_threshold       = 30
scale_in_adjustment          = -1
scale_in_comparison_operator = "LessThanOrEqualToThreshold"
scale_in_statistic           = "Average"
scale_in_period              = 60
scale_in_evaluation_periods  = 2
scale_in_cooldown            = 60

scale_tracking_cpu      = 50
scale_tracking_requests = 30