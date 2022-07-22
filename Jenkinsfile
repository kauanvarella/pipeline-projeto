pipeline {
    agent {
        dockerfile {
            additionalBuildArgs '--build-arg USER_ID=$(id -u) --build-arg GROUP_ID=$(id -g)'
        }
    }
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
                // sh 'ansible-playbook -u kauan -i hosts.yml --private-key ssh-prod-meuapp.pem playbook.yml'
                sh 'ssh -i "ssh-prod-meuapp.pem" ec2-user@ec2-34-211-224-42.us-west-2.compute.amazonaws.com'
            }
        }
    }
}