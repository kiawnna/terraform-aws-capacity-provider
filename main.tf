resource "aws_ecs_capacity_provider" "test" {
  name               = "${var.environment}-cap-provider"

  auto_scaling_group_provider {
    auto_scaling_group_arn = var.auto_scaling_group_arn

    managed_scaling {
      maximum_scaling_step_size = var.max_scaling_step_size
      minimum_scaling_step_size = var.min_scaling_step_size
      status                    = var.status
      target_capacity           = var.target_capacity
    }
  }
}