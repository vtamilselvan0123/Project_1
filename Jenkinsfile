pipeline {
    agent any

    stages {

        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }

        stage('Build React App') {
            steps {
                sh 'npm run build'
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
