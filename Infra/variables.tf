variable "region" {
  description = "Default region for provider"
  type        = string
  default     = "us-east-1"
}

variable "repo_name" {
  description = "ECR repository name"
  type        = string
  default     = "private-example"
}

