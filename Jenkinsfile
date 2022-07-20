pipeline {
    agent {
        docker { image 'kauanvarella/projeto:teste' }
    }
    stages {
        stage('Test1') {
            steps {
                sh 'terraform --version'
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
