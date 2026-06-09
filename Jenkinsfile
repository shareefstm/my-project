pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'git@github.com:shareefstm/my-project.git'
            }
        }

        stage('Create Application Infra') {
            steps {
                dir('applicationinfra') {
                    sh 'terraform init'
                    sh 'terraform plan'
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}
