pipeline {
    agent {
        docker { image 'kauanvarella/projeto:latest' }
    }
    environment {
        AWS_DEFAULT_REGION="us-west-2" 
    }
    stages {
        stage('Step 1 AWS') {
            steps {
                echo '1 Passou'
            }
        }
        stage('Iniciando o Terraform') {
            steps {
                withCredentials([<object of type com.cloudbees.jenkins.plugins.awscredentials.AmazonWebServicesCredentialsBinding>]) {
                    sh 'terraform init'
                }              
            }
        }
        stage('Aplicando o Terraform') {
            steps {
                withCredentials([<object of type com.cloudbees.jenkins.plugins.awscredentials.AmazonWebServicesCredentialsBinding>]) {
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}