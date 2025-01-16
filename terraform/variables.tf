variable "region" {}

variable "service_name" {}

variable "cluster_name" {}

variable "ssm_vpc_id" {}

variable "service_port" {}

variable "service_memory" {}

variable "service_cpu" {}

variable "ssm_listener" {}

variable "ssm_private_subnet_1" {}

variable "ssm_private_subnet_2" {}

variable "ssm_private_subnet_3" {}

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