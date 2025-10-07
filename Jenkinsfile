pipeline{
    agent any
    tools{
        jdk "jdk17"
        nodejs "node20"
    }
    environment {
        SONAR_HOME= tool "sonar-sc"
    }
    stages{
        stage("Clean Workspace"){
            steps{
                cleanWs()
            }
        }
        stage("Checkout from Git"){
            steps{
                git url: "https://github.com/biswarup65/Zomato-Clone.git", branch: "master"
            }
        }
        stage("SonarQube Code Analysis"){
            steps{
                withSonarQubeEnv("sonarqube-server"){
                    sh "$SONAR_HOME/bin/sonar-scanner -Dsonar.projectName=zomato -Dsonar.projectKey=zomato -X"
                }
            }
        }
        stage("SonarQube Quality Gate"){
            steps{
                script{
                    waitForQualityGate abortPipeline: false, credentialsId: "sonar"
                }
            }
        }
        
        stage("Install Dependencies"){
            steps{
                sh "npm ci"
                sh "npm install"
            }
        }
        
        stage("OWASP Dependency Check"){
            steps{
                dependencyCheck additionalArguments: '--scan ./ --disableYarnAudit --disableNodeAudit', odcInstallation: 'dc'
                dependencyCheckPublisher pattern: '**/dependency-check-report.xml'
            }
        }
        stage("Docker Build & Test"){
            steps{
                sh "docker build --no-cache -t zomatoapp:latest ."
            }
        }
        stage("Trivy Scanning"){
            steps{
                sh "trivy image zomatoapp:latest "
            }
        }
        stage("Docker Push"){
            steps{
                withCredentials([usernamePassword(credentialsId: "docker-hub",usernameVariable:"dockerhub_user",passwordVariable:"dockerhub_pass")]){
                    sh "docker login -u ${env.dockerhub_user} -p ${env.dockerhub_pass}"
                    sh "docker tag zomatoapp:latest ${env.dockerhub_user}/zomatoapp:latest  "
                    sh "docker push ${env.dockerhub_user}/zomatoapp:latest "
                }
            }
        }
        stage("Deploy"){
            steps{
                sh "docker run -d --name zomato-app -p 3000:80 biswarup65/zomatoapp:latest"
            }
        }
    }
}
