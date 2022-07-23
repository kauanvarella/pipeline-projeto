pipeline {
    agent { dockerfile true }
    stages {       
        stage('Provisionando Infraestrutura') {
            steps {
                withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'terraform-aws', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                    try {
                        echo 'DESTRUINDO INFRA SE EXISTIR - DESTRUINDO INFRA SE EXISTIR - DESTRUINDO INFRA SE EXISTIR - DESTRUINDO INFRA SE EXISTIR - DESTRUINDO INFRA SE EXISTIR'
                        sh 'terraform destroy -auto-approve'
                    } catch {
                        echo '...'
                    }
                    echo 'INICIANDO TERRAFORM - INICIANDO TERRAFORM - INICIANDO TERRAFORM - INICIANDO TERRAFORM - INICIANDO TERRAFORM  - INICIANDO TERRAFORM  - INICIANDO TERRAFORM '
                    sh 'terraform init'
                    echo 'APLICANDO TERRAFORM - APLICANDO TERRAFORM - APLICANDO TERRAFORM - APLICANDO TERRAFORM - APLICANDO TERRAFORM - APLICANDO TERRAFORM - APLICANDO TERRAFORM'
                    sh 'terraform apply -auto-approve'
                }  
            }
        }
        sleep(secs) {
            time: 10
        }
        stage('Configurando a instancia com Ansible') {
            steps {
                sh 'chmod 600 ssh-prod-meuapp.pem'
                ansiblePlaybook credentialsId: 'private-key', disableHostKeyChecking: true, installation: 'ansible', inventory: 'hosts.inv', playbook: 'playbook.yml'
            }
        }
    }
}