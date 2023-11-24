pipeline {
    agent any

    stages {
        stage('Build app') {
            steps {
                checkout scmGit(
                    branches: [[name: '*/main']],
                    extensions: [],
                    userRemoteConfigs: [[url: 'https://github.com/AbhishekGilalkar/ise3.git']]
                )
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    bat 'docker build -t jenkinsdocker .'
                }
            }
        }

        stage('Rename Image Tag') {
            steps {
                script {
                    bat 'docker tag jenkinsdocker immortal650/jenkinsdockerapp:image'
                }
            }
        }

        stage('Push Image to docker Hub') {
            steps {
                script {
                    bat 'docker login -u immortal650 -p exide_@123'
                    bat 'docker push immortal650/jenkinsdockerapp:image'
                }
            }
        }
    }
}
