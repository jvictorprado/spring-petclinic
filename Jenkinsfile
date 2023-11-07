pipeline {
    agent {
        docker {
            // Use uma imagem Docker com Java 17 (por exemplo, openjdk:17)
            image 'openjdk:17'
            args '-v /var/run/docker.sock:/var/run/docker.sock' // Monta o socket do Docker para execução de contêineres Docker dentro deste contêiner
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'java -version' // Verifica a versão do Java no contêiner
                sh 'mvn clean install' // Execute seus comandos Maven aqui
            }
        }
    }
}


// pipeline {
//     agent none
//     stages {
//         stage('Build') {
//             agent {
//                 docker {
//                     image 'maven:3.6.3'
//                 }
//             }
//             steps {
//                 sh 'mvn clean install'
//             }
//         }
//     }
// }