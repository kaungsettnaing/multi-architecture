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

output "ec2_instance_id" {
  description = "EC2 instance ID"
  value       = module.ec2-instance.id
}

output "security_group_id" {
  description = "Security group ID"
  value       = aws_security_group.ec2_sg.id
}