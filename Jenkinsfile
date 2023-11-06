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
                sh 'mvn clean install'
            }
        }
    }
}

