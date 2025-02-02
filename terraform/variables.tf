variable "region" {}

variable "service_name" {}

variable "container_image" {
  type        = string
  description = "Image with tag for deploying the application to ECS"
}

variable "cluster_name" {}

variable "ssm_vpc_id" {}

variable "service_port" {}

variable "service_memory" {}

variable "service_cpu" {}

variable "ssm_listener" {}

variable "ssm_private_subnet_1" {}

variable "ssm_private_subnet_2" {}

variable "ssm_private_subnet_3" {}

variable "ssm_alb" {}

variable "capabilities" {}

variable "environment_variables" {}

variable "service_healthcheck" {}

variable "service_launch_type" {}

variable "service_task_count" {}

variable "service_hosts" {}

# Autoscaling

variable "scale_type" {}

variable "task_minimum" {}

variable "task_maximum" {}

# Autoscaling CPU

variable "scale_out_cpu_threshold" {}

variable "scale_out_adjustment" {}

variable "scale_out_comparison_operator" {}

variable "scale_out_statistic" {}

variable "scale_out_period" {}

variable "scale_out_evaluation_periods" {}

variable "scale_out_cooldown" {}

variable "scale_in_cpu_threshold" {}

variable "scale_in_adjustment" {}

variable "scale_in_comparison_operator" {}

variable "scale_in_statistic" {}

variable "scale_in_period" {}

variable "scale_in_evaluation_periods" {}

variable "scale_in_cooldown" {}

variable "scale_tracking_cpu" {}

variable "scale_tracking_requests" {}

## Service Discovery

variable "ssm_service_discovery_namespace" {}