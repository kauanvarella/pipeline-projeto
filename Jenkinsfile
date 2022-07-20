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
        stage('Iniciando o Terraform') {
            steps {
                sh 'cd /home/ubuntu/.jenkins/workspace/teste/env/prod'
                sh 'pwd'
                sh 'ls'
                sh 'terraform init'
            }
        }
        stage('Aplicando o Terraform') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
