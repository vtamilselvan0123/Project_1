pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build React App') {
            steps {
                sh '''
                  npm install
                  npm run build
                '''
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t react-app:latest .'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run -d -p 80:80 react-app:latest'
            }
        }
    }
}
