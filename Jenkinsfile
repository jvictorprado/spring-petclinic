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
                    // image 'maven:3.9.5'
                    image 'maven:3.5.0'
                }
            }
            steps {
                sh 'java -version'
                sh 'mvn clean install'
            }
        }

    }
}