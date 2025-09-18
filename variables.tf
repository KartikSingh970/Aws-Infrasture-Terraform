variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "ap-south-1"
}

variable "aws_profile" {
  description = "AWS CLI profile name (optional). Leave blank if using default creds."
  type        = string
  default     = ""
}
