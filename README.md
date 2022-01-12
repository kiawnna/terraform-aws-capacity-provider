# terraform-aws-capacity-provider
An opinionated module that creates a capacity provider.

## Instantiation
The simplest instantiation requires only an environment.

```
module "capacity_provider" {
  source = "git@github.com:kiawnna/terraform-aws-capacity-provider.git"
  auto_scaling_group_arn = "autoscaling group arn"
  environment = "dev"
}
```
> This example will create a capacity provider that accepts all the provided defaults. Review defaults below under Variables / Customizations.

## Resources Created
* A capacity provider to be used with ECS stacks.

## Outputs
The capacity provider name is an output.

Reference it as:

> module.capacity_provider_module_name.capacity_provider_name

## Variables / Customization
The variable below can be customized to fit your needs. The current defaults are:
>  * `max_scaling_step_size` &rarr; 5
>  * `min_scaling_step_size` &rarr; 1
>  * `status` &rarr; ENABLED
>  * `target_capacity` &rarr; 100
>  * `environment` &rarr; no default
>  * `auto_scaling_group_arn` &rarr; no default

See the `variables.tf` file for further information.

## Tags
Tags are automatically added to all resources where possible. Tags will have the following format:

```
tags = {
    Name = "shared-${var.environment}-cap-provider"
    Deployment_Method = "terraform"
    Environment = var.environment
}
```

