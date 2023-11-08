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
                // sh 'mkdir -p /var/lib/apt/lists/partial'
                // sh 'apt-get update'
                // sh 'apt-get upgrade'
                // sh 'apt-get install default-jdk'
                // sh 'java -version'
                sh 'apt-get install sudo'
                sh 'sudo apt-get -y install maven'
                sh 'mvn -version'
                sh 'mvn clean install'
            }
        }

    }
}