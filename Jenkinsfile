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
                sh 'chmod 600 ssh-prod-meuapp.pem'
                sh 'id'
                sh 'id root'
                sh 'id agoravai'
                sh 'ls /home/agoravai/'
                // ansiblePlaybook credentialsId: 'private-key', disableHostKeyChecking: true, installation: 'ansible', inventory: 'hosts.inv', playbook: 'playbook.yml'
                // sh 'ansible-playbook playbook.yml -i hosts.yml --user ec2-user --key-file ssh-prod-meuapp.pem'
                // sh 'ssh -o StrictHostKeyChecking=no -i "ssh-prod-meuapp.pem" ec2-user@ec2-34-211-224-42.us-west-2.compute.amazonaws.com'
                sh 'ssh -o StrictHostKeyChecking=no -i ssh-prod-meuapp.pem ec2-user@34.211.224.42'
                sh 'echo Hello, World!'
            }
        }
    }
}