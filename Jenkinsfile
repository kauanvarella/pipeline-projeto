pipeline {
    agent {
        docker { image 'kauanvarella/projeto:latest' }
    }
    environment {
        aws_access_key_id = credentials('AKIASDLSQKOMKAS3AXOA')
        aws_secret_access_key = credentials('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')
    }
    stages {
        stage('Step 1 AWS') {
            steps {
                echo '1 Passou'
            }
        }
        stage('Iniciando o Terraform') {
            steps {
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