pipeline {
    agent none
    stages {
        stage('Build') {
            agent {
                docker {
                    image 'maven:3.6.3'
                }
            }
            steps {
                sh 'apt-get update && apt-get install -y openjdk-17-jdk'
                sh 'mvn clean install'
            }
        }
    }
}