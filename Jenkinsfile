pipeline {
    agent any
    stages {
        stage('Test') {
            steps {
                echo 'Hello World"'
                sh 'terraform --version'
                sh 'ansible --version'
            }
        }
    }
}