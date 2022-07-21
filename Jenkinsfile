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
        stage('Ansible') {
            steps {
                sh 'export PATH=$PATH:/bin'
                sh 'export PATH=$PATH:/home/kauan/.jenkins/workspace/pipeline-projeto'
                sh 'ls /home/kauan/.jenkins/workspace/pipeline-projeto'
                sh 'pwd'
                sh 'echo $PATH'
                // ansiblePlaybook(credentialsId: 'ssh-prod-meuapp.pem', inventory: 'hosts.yml', playbook: 'playbook.yml')
            }
        }
    }
}