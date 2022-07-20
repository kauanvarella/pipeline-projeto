pipeline {
    agent {
        docker { image 'kauanvarella/projeto:latest' }
    }
    environment {
        AWS_DEFAULT_REGION="us-west-2" 
    }
    stages {
        stage('Destruindo a Infra existente') {
            steps {
                withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'terraform-aws', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                    sh 'terraform destroy -auto-approve'
                }  
            }
        }
        stage('Iniciando o Terraform') {
            steps {
                withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'terraform-aws', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                    sh 'terraform init'
                }              
            }
        }
        stage('Aplicando o Terraform') {
            steps {
                withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'terraform-aws', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                    sh 'terraform apply -auto-approve'
                } 
            }
        }
    }
}