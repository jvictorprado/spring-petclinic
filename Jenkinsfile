pipeline {
    agent none
    stages {

        stage('Java Install'){
            agent {
                docker {
                    image 'openjdk:17'
                }
            }
            steps {
                sh 'java -version'
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
