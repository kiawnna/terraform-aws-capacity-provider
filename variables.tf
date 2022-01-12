variable "environment" {
  type = string
}
variable "auto_scaling_group_arn" {
  type = string
}
variable "max_scaling_step_size" {
  type = number
}
variable "min_scaling_step_size" {
  type = number
}
variable "status" {
  type = string
  default = "ENABLED"
}
variable "target_capacity" {
  type = number
}