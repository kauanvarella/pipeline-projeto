pipeline {
    agent { dockerfile true }
    stages {       
        stage('---------- Provisionando Infraestrutura de Producao ----------') {
            steps {
                dir('./prod') {
                    withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'terraform-aws', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                        script {
                            try {
                                sh 'terraform destroy -target module.aws-prod.infra-main.aws_instance.app_server -auto-approve'
                            } 
                            catch (err) {
                                echo 'Ainda nao existiam instancias de producao, criando uma nova'
                            }
                        }                    
                        sh 'terraform init'
                        sh 'terraform apply -auto-approve'
                    }  
                }
            }
        }
        stage('---------- Provisionando Infraestrutura de Homologacao ----------') {
            steps {
                dir('./homolog') {
                    withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'terraform-aws', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                        script {
                            try {
                                sh 'terraform destroy -target module.aws-homolog.infra-main.aws_instance.app_server -auto-approve'
                            } 
                            catch (err) {
                                echo 'Ainda nao existiam instancias de homologacao, criando uma nova'
                            }
                        }                    
                        sh 'terraform init'
                        sh 'terraform apply -auto-approve'
                    }  
                }
            }
        }
        stage('---------- Instalando as dependencias ----------') {
            steps {
                sh 'sleep 15'
                dir('./infra') {
                    sh 'chmod 600 ssh-prod-meuapp.pem'
                }
                ansiblePlaybook credentialsId: 'private-key', disableHostKeyChecking: true, installation: 'ansible', inventory: 'hosts.yml', playbook: 'playbook-infra-prod.yml'
                ansiblePlaybook credentialsId: 'private-key', disableHostKeyChecking: true, installation: 'ansible', inventory: 'hosts.yml', playbook: 'playbook-infra-homolog.yml'
            }
        }
    }
}