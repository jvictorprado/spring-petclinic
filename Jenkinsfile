pipeline {
    agent none
    stages {
        stage('Maven Install') {
            agent {
                docker {
                    image 'maven:3.6.3'
                }
            }
            steps {
                script {
                    sh 'apt-get update && apt-get install -y openjdk-17-jdk'
                }
                sh 'java -version'
                sh 'mvn clean install'
            }
        }
    }
}
