pipeline {
    agent { dockerfile true }
    stages {
        // stage('Provisionando Infraestrutura') {
        //     steps {
        //         withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'terraform-aws', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')]) {
        //             echo 'INICIANDO TERRAFORM - INICIANDO TERRAFORM - INICIANDO TERRAFORM - INICIANDO TERRAFORM - INICIANDO TERRAFORM'
        //             sh 'terraform init'
        //             echo 'APLICANDO TERRAFORM - APLICANDO TERRAFORM - APLICANDO TERRAFORM - APLICANDO TERRAFORM - APLICANDO TERRAFORM'
        //             sh 'terraform apply -auto-approve'
        //         }  
        //     }
        // }
        stage('Ansible') {
            steps {
                sh 'id'
                sh 'chmod 600 ssh-prod-meuapp.pem'
                // ansiblePlaybook credentialsId: 'private-key', disableHostKeyChecking: true, installation: 'ansible', inventory: 'hosts.inv', playbook: 'playbook.yml'
                sh 'ansible-playbook -u ec2-user -i hosts.yml --private-key ssh-prod-meuapp.pem playbook.yml'
            }
        }
    }
}