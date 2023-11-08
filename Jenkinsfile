pipeline {
    agent any
    stages {
        
        stage('Checkout') {
            steps {
                //Check Git repository source code
                checkout scm
            }
        }

        stage('Maven Install') {
            agent {
                docker {
                    image 'ubuntu:latest'
                }
            }
            steps {
                sh 'apt-get update'
                sh 'sudo apt-get install default-jdk'
                sh 'java -version'
                sh 'apt-get -y install maven'
                sh 'mvn -version'
                sh 'mvn clean install'
            }
        }

    }
}