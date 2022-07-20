pipeline {
    agent {
        docker { image 'kauanvarella/projeto:latest' }
    }
    stages {
        stage('Configurando AWS') {
            steps {
                sh 'chmod +x /usr/local/bin/aws'
                sh 'aws configure set aws_access_key_id AKIASDLSQKOMKAS3AXOA'
                sh 'aws configure set aws_secret_access_key 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'
                sh 'aws configure set default.region us-west-2'
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
