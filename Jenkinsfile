pipeline {
    agent {
        docker { image 'kauanvarella/projeto:latest' }
    }
    environment {
        AWS_ACCESS_KEY_ID     = credentials('AKIASDLSQKOMKAS3AXOA')
        AWS_SECRET_ACCESS_KEY = credentials('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')
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