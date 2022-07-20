pipeline {
    agent {
        docker { image 'kauanvarella/projeto:latest' }
    }
    stages {
        stage('Step 1 AWS') {
            steps {
                echo '1 Passou'
            }
        }
        stage('Iniciando o Terraform') {
            steps {
                sh 'cd'
                sh 'pwd'
                sh 'cd ..'
                sh 'pwd'
                sh 'cat root/.aws/credentials'
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
