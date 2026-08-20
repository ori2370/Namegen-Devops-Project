variable "aws_region" {
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  type        = string
  default     = "namegen-cluster"
}

variable "environment" {
  description = "deploy environment"
  type        = string
  default     = "dev"
}

variable "github_role_name" {
  type        = string
  default     = "Github_actions_role"
  description = "IAM role"
}

variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "CIDR block for the VPC"
}