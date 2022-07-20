pipeline {
    agent {
        docker { image 'kauanvarella/projeto:latest' }
    }
    stages {
        stage('Test1') {
            steps {
                sh 'terraform --version'
            }
        }

        stage('Test2') {
            become{ true }
            steps {
                sh 'ansible --version'
            }
        }
    }
}
