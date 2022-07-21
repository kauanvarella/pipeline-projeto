pipeline {
    agent {
        docker { image 'kauanvarella/projeto:latest' }
    }
    stages {
        stage('Provisionando Infraestrutura') {
            steps {
                withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'terraform-aws', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                    echo 'Destruindo Infra'
                    echo 'Destruindo Infra'
                    echo 'Destruindo Infra'
                    sh 'terraform destroy -auto-approve'
                    echo 'Iniciando o Terraform'
                    echo 'Iniciando o Terraform'
                    echo 'Iniciando o Terraform'
                    sh 'terraform init'
                    echo 'Aplicando o Terraform'
                    echo 'Aplicando o Terraform'
                    echo 'Aplicando o Terraform'
                    sh 'terraform apply -auto-approve'
                }  
            }
        }
        stage ('Testando conexão SSH')  {
            steps{
                echo 'TESTE'
            }
        }
    }
}