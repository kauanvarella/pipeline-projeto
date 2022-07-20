pipeline {
    agent {
        docker { image 'kauanvarella/projeto:teste' }
    }
    stages {
        stage('Test1') {
            steps {
                sh 'terraform --version'
            }
        }
    }
}
