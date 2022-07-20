pipeline {
    agent {
        docker { image 'kauanvarella/projeto:latest' }
    }
    stages {
        stage('Step 1 AWS') {
            steps {
                sh 'terraform --version'
                sh 'cd /home/ubuntu/.aws/'
                sh 'cat credentials'
            }
        }
        stage('Iniciando o Terraform') {
            steps {
                sh 'pwd'
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
