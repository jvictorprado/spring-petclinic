pipeline {
    agent any
    stages {
        
        stage('Checkout') {
            steps {
                // Check Git repository source code
                checkout scm
            }
        }

        stage('Maven Install') {
            agent {
                docker {
                    image 'maven:3.6.3'
                }
            }
            steps {
                sh 'java -version'
                sh 'mvn clean install'
            }
        }

    }
}