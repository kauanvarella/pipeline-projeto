pipeline {
    agent {
        docker { image 'kauanvarella/projeto:latest' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'sudo terraform --version'
                sh 'sudo ansible --version'
            }
        }
    }
}
