pipeline {
    agent any
    agent { 
      dockerfile true 
    }
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