variable "vpc_id" {
  description = "VPC ID where RDS will reside"
  type        = string
}

variable "private_subnets" {
  description = "Private subnets for RDS"
  type        = list(string)
}

variable "db_name" {
  description = "Name of the database"
  type        = string
  default     = "mydb"
}

variable "db_username" {
  description = "Database master username"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "Database master password"
  type        = string
}

variable "ecs_sg_id" {
  description = "Security Group ID of ECS instances allowed to access RDS"
  type        = string
}

