pipeline {
    agent any

    stages {
        stage('Build React App') {
            steps {
                dir('react-app') {
                    sh '''
                      npm install
                      npm run build
                    '''
                }
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
                  docker rm -f react-container || true
                  docker run -d -p 80:80 --name react-container react-app:latest
                '''
            }
        }
    }
}
