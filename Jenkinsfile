pipeline {
    agent {
        docker { image 'kauanvarella/projeto:latest' }
    }
    environment { 
        aws_access_key_id = 'AKIASDLSQKOMKAS3AXOA'
        aws_secret_access_key = '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'
    }
    stages {
        stage('Configurando AWS') {
            steps {
                sh 'aws configure'
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
