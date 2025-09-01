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