pipeline {
    agent {
        docker { image 'kauanvarella/projeto:latest' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'terraform --version'
            }
        }
    }
}
