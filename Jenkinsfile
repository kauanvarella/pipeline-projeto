pipeline {
    agent {
        docker { image 'kauanvarella/projeto:latest' }
    }
    stages {
        stage('Test1') {
            steps {
                sh 'terraform --version'
                sh 'python --version'
            }
        }

        stage('Test2') {
            steps {
                sh 'ansible --version'
            }
        }
    }
}
