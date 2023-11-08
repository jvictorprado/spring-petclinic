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
                    image 'maven:latest' 
                }
            }
            steps {
                sh 'java -version'
                sh 'mvn -version'
                sh 'mvn clean install -e'
            }
        }

    }
}