pipeline {
    agent {
        docker { image 'kauanvarella/projeto:latest' }
    }
    stages {
        stage('Provisionando Infraestrutura') {
            steps {
                withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'terraform-aws', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                    echo 'INICIANDO TERRAFORM - INICIANDO TERRAFORM - INICIANDO TERRAFORM - INICIANDO TERRAFORM - INICIANDO TERRAFORM'
                    sh 'terraform init'
                    echo 'APLICANDO TERRAFORM - APLICANDO TERRAFORM - APLICANDO TERRAFORM - APLICANDO TERRAFORM - APLICANDO TERRAFORM'
                    sh 'terraform apply -auto-approve'
                }  
            }
        }
        stage('Conexao SSH') {
            steps {             
                sshagent(credentials:['SSH_AWS_SERVER']){
                    sh 'ssh ec2-user@ec2-44-241-205-98.us-west-2.compute.amazonaws.com'
                }
            }
        }
    }
}