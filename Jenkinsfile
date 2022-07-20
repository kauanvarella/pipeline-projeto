pipeline {
    agent {
        docker { image 'kauanvarella/projeto:latest' }
    }
    stages {
        stage('Test') {
            steps {
                echo 'Hello World"'
                pwd
                // sh 'terraform --version'
                // sh 'ansible --version'
            }
        }
    }
}