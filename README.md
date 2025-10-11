# 🚀 DevSecOps Jenkins CI/CD Pipeline for a React.js Application 

![Project Banner](https://sdmntpreastus.oaiusercontent.com/files/00000000-5c60-61f9-b7c4-7262765574c9/raw?se=2025-10-11T07%3A13%3A39Z&sp=r&sv=2024-08-04&sr=b&scid=e0064b02-fb87-51e9-b11f-7bb70cdef242&skoid=03727f49-62d3-42ac-8350-1c0e6559d238&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2025-10-11T00%3A25%3A56Z&ske=2025-10-12T00%3A25%3A56Z&sks=b&skv=2024-08-04&sig=1s46wUfj%2BH39TOzjWoY2iPBfUlTIh/ES6KAW1n5dm/4%3D)

## 🧩 Project Overview

This project demonstrates a **complete DevSecOps CI/CD pipeline** for a **React.js (Node.js-based)** application using **Jenkins**.   

It integrates **automation, security, and code quality checks** at every stage of the development lifecycle — showcasing a modern **DevSecOps implementation** for end-to-end software delivery.

The **goal** is to build a **secure, automated, and production-ready pipeline** that ensures:
- Continuous Integration & Delivery (CI/CD)
- Code quality and security scanning
- Containerized and consistent deployment

---

## 🧠 Key Highlights
✅ **Jenkins Declarative Pipeline** for automated build, test & deploy  
✅ **SonarQube** for static code analysis & quality gate checks  
✅ **OWASP Dependency-Check** for identifying security vulnerabilities  
✅ **Trivy** for Docker image vulnerability scanning  
✅ **Docker Compose** for seamless environment orchestration  
✅ **GitHub Integration** for source control and webhook triggers  

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
| 🧰 **Declarative Tool Install** | Installs necessary dependencies and tools. |
| 🧹 **Clean Workspace** | Cleans old build files to ensure a fresh environment. |
| 🔄 **Checkout from Git** | Pulls the latest code from the GitHub repository. |
| 🧠 **SonarQube Code Analysis** | Performs static code analysis to maintain code quality. |
| ✅ **SonarQube Quality Gate** | Ensures that the code meets quality and security thresholds. |
| 🔒 **OWASP Dependency Check** | Scans dependencies for known vulnerabilities. |
| 🧱 **Docker Build & Test** | Builds and tests the React.js app inside a Docker container. |
| 🕵️‍♂️ **Trivy Scanning** | Scans the Docker image for security vulnerabilities. |
| 🚀 **Docker Push & Deploy** | Pushes the Docker image to a repository and deploys the app. |

---
## 🖼️ Pipeline & Dashboard Snapshots




## 📊 Jenkins Pipeline Execution

![Jenkins Pipeline View](https://github.com/biswarup65/Zomato-app-CICD/blob/main/images/Screenshot%202025-10-07%20230539.png)

- **SonarQube Quality Gate:** ✅ Passed  
- **OWASP & Trivy Scans:** ✅ No critical vulnerabilities  
- **Build & Deployment:** 🚀 Successfully deployed using Docker Compose

---

## 🌐 Application Preview (Deployed)

![Zomato React App](https://github.com/biswarup65/Zomato-app-CICD/blob/main/images/Screenshot%202025-10-07%20230924.png)


---


![Zomato React App](https://github.com/biswarup65/Zomato-app-CICD/blob/main/images/Screenshot%202025-10-07%20231023.png)


---

## 📊 SonarQube Code Quality Analysis Dashboard

![SonarQube Dashboard](https://github.com/biswarup65/Zomato-app-CICD/blob/main/images/Screenshot%202025-10-08%20123927.png)

---

## 🧠 Key Learnings

- Integrated **DevSecOps** concepts into a full-stack React.js app.
- Automated **code quality, testing, and deployment** workflows using Jenkins.
- Embedded **security at every stage** (SAST, dependency scanning, container scanning).
- Built a **secure, efficient, and production-ready CI/CD pipeline**.

---

## 📂 Folder Structure
```bash
Zomato-app-CICD/
├── Jenkinsfile                 # CI/CD pipeline definition
├── Dockerfile                  # React app container configuration
├── docker-compose.yml          # Orchestrates services
├── src/                        # React source code
│   ├── components/
│   ├── pages/
│   └── App.js
├── public/
│   ├── index.html
│   └── favicon.ico
├── package.json                # Node dependencies
└── README.md                   # Project documentation
```

---

## 🚀 Setup & Deployment Instructions

## 1️⃣ Clone the Repository
``` bash
git clone https://github.com/biswarup65/Zomato-app-CICD.git
cd Zomato-app-CICD/
```
## 2️⃣ Build Docker Image
``` bash
docker build -t zomato-react-app .
```
## 3️⃣ Run Application with Docker Compose
``` bash
docker-compose up -d
```
## Run Container locally
```bash
docker run -d --name zomato-app-cont -p 3000:3000 zomato-react-app:latest
```
## 4️⃣ Access the Application
Open your browser and visit:
```yml
http://<your-server-ip>:3000
```
## 5️⃣ Access Jenkins Dashboard
```bash
http://<your-server-ip>:8080
```
## 6️⃣ Access SonarQube Dashboard
```bash
http://<your-server-ip>:9000
```
---

## 🧰 Essential Jenkins Commands

Run pipeline manually:
```bash
Build Now
```

Check logs:
```bash
cat /var/lib/jenkins/workspace/<pipeline-name>/console.log
```

Restart Jenkins service:
```bash
sudo systemctl restart jenkins
```
Stop Docker Container:
``` bash
docker-compose down
```

Clean Docker environment:
```bash
docker system prune -af
```
---
## 🧰 Security Integration

## 🔍 SonarQube Scanner (local run)
```bash
sonar-scanner \
  -Dsonar.projectKey=zomato \
  -Dsonar.sources=. \
  -Dsonar.host.url=http://localhost:9000 \
  -Dsonar.login=<your-token>
```

## 🔒 Trivy Image Scan
```bash
trivy image zomato-react-app
```
## 🔒 Trivy File Scan
```bash
trivy fs --format table -o trivy-fs-report.html .
```

## 🔍 SonarQube Analysis

Ensures code quality and maintainability.

Quality Gate Status: ✅ Passed

Bugs: 1 (C Rating)

Vulnerabilities: 0 (A Rating)

## 🧩 OWASP Dependency Check

Scans for known CVEs and outdated dependencies.

## 🧱 Trivy Image Scan

Detects Docker image vulnerabilities before pushing to the registry.

---

## 💡 Learning & Outcome

This project showcases how DevSecOps bridges the gap between:

✅ **Development** 🧑‍💻

✅ **Security** 🔐

✅ **Operations** ⚙️

It ensures faster, safer, and more reliable software delivery — an essential skillset for any modern DevOps Engineer.

---
## 📂 GitHub Repository

👉 [Zomato React App DevSecOps CI/CD Project](https://github.com/biswarup65/Zomato-app-CICD)

---
## 💡 Conclusion

This project demonstrates how DevSecOps bridges development, security, and operations — ensuring software is fast, secure, and reliable from build to deployment.
It’s a showcase of my practical DevOps skills, automation expertise, and security-first approach. 🔥

---

## 🧑‍💻 Author
**👋 Biswarup Basak**  
💼 DevOps & Cloud Enthusiast | CI/CD | Docker | Kubernetes | Jenkins | AWS | Security Automation    
🔗 [**GitHub Profile**](https://github.com/biswarup65)  
📧 **Email:** [iambiswarupbasak@gmail.com](mailto:iambiswarupbasak@gmail.com)

---







