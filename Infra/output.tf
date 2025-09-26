output "name" {
   value       = module.ecr.repository_name
   description = "The name of the ECR repository"
 }

output "url" {
   value       = module.ecr.repository_url
   description = "The URL of the ECR repository"
 }

output "arn_name" {
   value       = module.ecr.repository_arn
   description = "The ARN of the ECR repository"
 }

 output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc.vpc_id
}

output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = module.vpc.private_subnets
}

output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = module.vpc.public_subnets
}

output "ec2_instance_id" {
  description = "EC2 instance ID"
  value       = module.ec2-instance.id
}

output "security_group_id" {
  description = "Security group ID"
  value       = aws_security_group.ec2_sg.id
}

output "ec2_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = module.ec2-instance.public_ip
}