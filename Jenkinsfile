pipeline {
    agent {
        docker { image 'kauanvarella/projeto:latest' }
    }
    stages {
        stage('Step 1 AWS') {
            steps {
                echo '1 Passou'
                sh 'apt-get install git'
            }
        }
        stage('Iniciando o Terraform') {
            steps {
                sh 'git clone https://github.com/kauanvarella/projeto.git'
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
