# 🚀 DevSecOps Jenkins CI/CD Pipeline for a React.js Application 

![Project Banner](https://raw.githubusercontent.com/biswarup65/Zomato-app-CICD/main/Screenshot%202025-10-07%20230539.png)

## 🧩 Project Overview

I’m excited to share my latest project — a **complete DevSecOps CI/CD pipeline built using Jenkins** for a **React.js (Node.js-based)** application inspired by **Zomato** 🍔.  

This project integrates **automation, security, and code quality checks** at every stage of the development lifecycle — showcasing a modern **DevSecOps implementation** for end-to-end software delivery.

---

## 🔧 Tools & Technologies Used

| Category | Tools |
|-----------|-------|
| **Version Control** | [GitHub](https://github.com/biswarup65/Zomato-app-CICD) |
| **CI/CD Automation** | [Jenkins](https://www.jenkins.io/) |
| **Containerization** | Docker, Docker Compose |
| **Code Quality & Analysis** | SonarQube |
| **Security Testing** | OWASP Dependency Check |
| **Docker Image Scanning** | Trivy |
| **DevSecOps Practices** | Automated quality gates, vulnerability scanning, secure deployment |

---

## ⚙️ Pipeline Workflow

The Jenkins Declarative Pipeline automates the following stages:

| Stage | Description |
|--------|--------------|
| 🧰 **Tool Install** | Installs necessary dependencies and tools. |
| 🧹 **Clean Workspace** | Cleans old build files to ensure a fresh environment. |
| 🔄 **Checkout from Git** | Pulls the latest code from the GitHub repository. |
| 🧠 **SonarQube Code Analysis** | Performs static code analysis to maintain code quality. |
| ✅ **SonarQube Quality Gate** | Ensures that the code meets quality and security thresholds. |
| 🔒 **OWASP Dependency Check** | Scans dependencies for known vulnerabilities. |
| 🧱 **Docker Build & Test** | Builds and tests the React.js app inside a Docker container. |
| 🕵️‍♂️ **Trivy Scanning** | Scans the Docker image for security vulnerabilities. |
| 🚀 **Docker Push & Deploy** | Pushes the Docker image to a repository and deploys the app. |

---

## 📊 Jenkins Pipeline Execution

![Jenkins Pipeline View](https://raw.githubusercontent.com/biswarup65/Zomato-app-CICD/main/Screenshot%202025-10-07%20230924.png)

- **SonarQube Quality Gate:** ✅ Passed  
- **OWASP & Trivy Scans:** ✅ No critical vulnerabilities  
- **Build & Deployment:** 🚀 Successfully deployed using Docker Compose

---

## 🌐 Live Application Preview

Deployed Frontend:  
**http://44.200.191.85:3000**

![Zomato React App](https://raw.githubusercontent.com/biswarup65/Zomato-app-CICD/main/Screenshot%202025-10-07%20231023.png)

---

## 🧠 Key Learnings

- Integrated **DevSecOps** concepts into a full-stack React.js app.
- Automated **code quality, testing, and deployment** workflows using Jenkins.
- Embedded **security at every stage** (SAST, dependency scanning, container scanning).
- Built a **secure, efficient, and production-ready CI/CD pipeline**.

---

## 🛠️ Project Architecture
```bash
Zomato-app-CICD/
├── Jenkinsfile                 # CI/CD pipeline definition
├── Dockerfile                  # React app container configuration
├── docker-compose.yml          # Orchestrates services (app + SonarQube)
├── src/                        # React source code
│   ├── components/
│   ├── pages/
│   └── App.js
├── public/
│   ├── index.html
│   └── favicon.ico
├── package.json                # Node dependencies
├── .env                        # Environment variables
└── README.md                   # Project documentation-

