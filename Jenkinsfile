pipeline {
    agent {
        docker { image 'kauanvarella/projeto:latest' }
    }
    stages {
        stage('Configurando AWS') {
            steps {
                sh 'export AWS_ACCESS_KEY_ID=AKIASDLSQKOMKAS3AXOA'
                sh 'export AWS_SECRET_ACCESS_KEY=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'
                sh 'export AWS_DEFAULT_REGION=us-west-2'
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
