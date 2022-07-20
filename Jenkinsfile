pipeline {
    agent {
        docker { image 'kauanvarella/projeto:latest' }
    }
    stages {
        stage('Test') {
            steps {
                mkdir '/home/ubuntu/teste10'
                echo 'Hello World'
                // sh 'terraform --version'
                // sh 'ansible --version'
            }
        }
    }
}