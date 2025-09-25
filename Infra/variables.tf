variable "region" {
  description = "Default region for provider"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "nodejs-multi-arch" 
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "repo_name" {
  description = "ECR repository name"
  type        = string
  default     = "private-example"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "az_count" {
  description = "Number of availability zones"
  type        = number
  default     = 2
}

variable "public_subnets" {
  description = "List of public subnet CIDR blocks"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
  
}

variable "private_subnets" {
  description = "List of private subnet CIDR blocks"
  type        = list(string)
  default     = ["10.0.128.0/20", "10.0.144.0/20"]
}

variable "instance_name" {
  description = "EC2 instance name"
  type        = string
  default     = "nodejs-static-web"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-08982f1c5bf93d976" # Amazon Linux 2 in us-east-1
}

variable "key_name" {
  description = "Key pair name for SSH access"
  type        = string
  default     = "nodejs_static_web" # Replace with your actual key pair name
}


