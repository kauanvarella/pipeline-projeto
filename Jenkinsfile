pipeline {
    agent {
        docker { image 'node:16.13.1-alpine' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'node --version'
            }
        }
    }
}
// pipeline {
//     agent {
//         docker { image 'kauanvarella/projeto:latest' }
//     }
//     stages {
//         stage('Test') {
//             steps {
//                 mkdir '/home/ubuntu/teste10'
//                 echo 'Hello World'
//                 sh 'terraform --version'
//                 sh 'ansible --version'
//             }
//         }
//     }
// }