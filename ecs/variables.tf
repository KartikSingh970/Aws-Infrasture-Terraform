variable "private_subnets" {
  description = "List of private subnet IDs from VPC module"
  type        = list(string)
}

variable "vpc_id" {
  description = "VPC ID where ECS instances reside"
  type        = string
}

