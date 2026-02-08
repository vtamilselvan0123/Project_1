pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/sriram-R-krishnan/devops-build.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t react-app:latest .'
            }
        }

        stage('Run Container') {
            steps {
                sh '''
                docker rm -f react-app || true
                docker run -d -p 80:80 --name react-app react-app:latest
                '''
            }
        }
    }
}
