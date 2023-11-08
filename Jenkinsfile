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
                    // image 'maven:latest'
                    image 'maven:3.9.5-eclipse-temurin-17-alpine' 
                    args '-v /root/.m2:/root/.m2'
                }
            }
            steps {
                sh 'java -version'
                // sh 'mvn -version'
                sh 'mvn clean install'
                //sh 'mvn -B -DskipTests clean package'
            }
        }

    }
}