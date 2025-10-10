🚀 DevSecOps Jenkins CI/CD Pipeline for a React.js Application
🧠 Overview

This project demonstrates the implementation of a complete DevSecOps CI/CD pipeline for a React.js (Node.js-based) application using Jenkins. The focus is on integrating automation, security, and quality into every stage of the Software Development Life Cycle (SDLC).

The pipeline ensures that every commit undergoes code quality checks, security scans, and automated deployments, resulting in a faster, safer, and more reliable software delivery process.

🧩 Project Highlights

✅ Automated CI/CD Pipeline using Jenkins for React.js application builds, testing, and deployments.
✅ SonarQube Integration for continuous code quality inspection and static analysis.
✅ OWASP Dependency Scanning for identifying vulnerabilities in dependencies.
✅ Trivy Image Scanning to detect security issues in Docker images.
✅ Docker & Docker Compose for consistent containerized environments.
✅ Security embedded into every phase following DevSecOps best practices.

🔧 Tools & Technologies Used
Category	Tools & Technologies
Version Control	GitHub
CI/CD Automation	Jenkins
Containerization	Docker, Docker Compose
Code Quality & Analysis	SonarQube
Security Scanning	OWASP Dependency Check, Trivy
Programming Stack	React.js, Node.js
DevSecOps Practices	Secure CI/CD, Vulnerability Scanning, Automated Quality Gates
⚙️ Pipeline Workflow

Code Commit: Developer pushes code to GitHub repository.

Jenkins Trigger: Pipeline starts automatically via a webhook.

Build Stage: Jenkins builds the React.js app using Node.js.

Code Quality Analysis: SonarQube performs static code analysis.

Security Scanning:

OWASP checks for known vulnerabilities in dependencies.

Trivy scans Docker images for security risks.

Dockerization: Application is containerized using Docker.

Deployment: The application is deployed securely via Docker Compose after all checks pass.

📁 Project Structure
├── Jenkinsfile                 # CI/CD pipeline definition
├── Dockerfile                  # React app container setup
├── docker-compose.yml          # Multi-container orchestration
├── src/                        # React.js source code
├── public/                     # Static assets
├── sonar-project.properties    # SonarQube configuration
└── README.md                   # Project documentation

🧪 Security Integration

SonarQube Quality Gates: Prevents deployment if code quality issues exceed threshold.

OWASP Dependency Scan: Detects outdated or vulnerable dependencies.

Trivy Image Scan: Ensures Docker images are free from high-risk vulnerabilities before deployment.

🚢 Deployment

Once the Jenkins pipeline successfully completes all stages (build → quality scan → security scan → containerize), the application is automatically deployed in a secure Docker environment managed by Docker Compose.

📸 Sample Pipeline Stages
[1] Git Checkout
[2] Install Dependencies
[3] Build React App
[4] Run SonarQube Analysis
[5] OWASP Dependency Check
[6] Trivy Image Scan
[7] Build & Push Docker Image
[8] Deploy via Docker Compose

🌐 Repository

🔗 GitHub Repo: DevSecOps Jenkins CI/CD Pipeline for React.js

💡 Key Takeaway

This project illustrates how DevSecOps integrates development, security, and operations into a unified, automated pipeline — ensuring faster, safer, and more compliant software releases.

🧑‍💻 Author

👋 Biswarup Basak
🎓 B.Tech | Aspiring DevOps & Cloud Engineer
🔗 LinkedIn
 • GitHub
