pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                sh './build.sh'
            }
        }
        stage('Push to Docker Hub') {
            steps {
                sh 'docker tag react-prod-app satheesh23/dev:latest'
                sh 'docker push satheesh23/dev:latest'
            }
        }
        stage('Deploy on EC2') {
            steps {
                sh './deploy.sh'
            }
        }
    }
}

