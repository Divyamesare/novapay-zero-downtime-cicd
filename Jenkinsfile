pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'NovaPay CI/CD pipeline started'
                git branch: 'main',
                    url: 'https://github.com/Divyamesare/novapay-zero-downtime-cicd.git'
            }
        }

        stage('Build and Test') {
            steps {
                sh 'mvn -B clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t novapay-api:1.0.2 .'
            }
        }
    }

    post {
        success {
            echo 'NovaPay build, tests, and Docker image build completed successfully.'
        }
        failure {
            echo 'Pipeline failed. Check the stage logs.'
        }
    }
}
