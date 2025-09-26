# 🐳 Multi-Architecture Portfolio Project

This project demonstrates how to build, push, and deploy **multi-architecture container images** (supporting `amd64`) alongside **Infrastructure as Code (IaC)** with Terraform on AWS.  

It serves as a **hands-on portfolio project** to showcase DevOps practices including:
- Multi-arch Docker builds with **GitHub Actions**
- CI/CD pipelines for automated image publishing
- Terraform modules for cloud infrastructure provisioning
- Containerized application deployment

---

## 🚀 Features

- **Multi-architecture Docker images**  
  - Build for `linux/amd64` with a single command.  
  - CI/CD workflow pushes to container registry.  

- **Terraform-based infrastructure**  
  - AWS backend (S3 + DynamoDB) for remote state.  
  - Modular IaC design for reusability.  

- **CI/CD automation**  
  - GitHub Actions workflow for build & push.  
  - Linting, formatting, and validation steps.  

---

## 📂 Project Structure

multi-architecture/
├── .github/workflows/ # CI/CD workflows
├── app/ # Sample application + Dockerfile
├── Infra/ # Infrastructure as Code (Terraform)
├── aws-backend-infra/ # Terraform remote state backend
├── .gitignore
├── LICENSE
└── README.md

## 🎯 Learning Outcomes

By completing this project, I practiced:

  - Using Docker Buildx for multi-architecture builds

  - Automating builds & pushes with GitHub Actions

  - Managing infrastructure with Terraform

  - Structuring a project for real-world DevOps workflows

## 📜 License

Licensed under the MIT License
