module "ecr" {
  source = "terraform-aws-modules/ecr/aws"

  repository_name = var.repo_name

  repository_image_tag_mutability = "IMMUTABLE_WITH_EXCLUSION"

  repository_image_tag_mutability_exclusion_filter = [
    {
      filter      = "latest*"
      filter_type = "WILDCARD"
    },
    {
      filter      = "dev-*"
      filter_type = "WILDCARD"
    },
    {
      filter      = "qa-*"
      filter_type = "WILDCARD"
    }
  ]

  repository_lifecycle_policy = jsonencode({
    rules = [
      {
        rulePriority = 1,
        description  = "Keep last 30 images",
        selection = {
          tagStatus     = "tagged",
          tagPrefixList = ["v"],
          countType     = "imageCountMoreThan",
          countNumber   = 30
        },
        action = {
          type = "expire"
        }
      }
    ]
  })

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}