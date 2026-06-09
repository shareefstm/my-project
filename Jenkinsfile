pipeline {
    agent any
    
    parameters {
        choice(
            name: 'ACTION',
            choices: ['apply', 'destroy'],
            description: 'Select Terraform action'
        )

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'git@github.com:shareefstm/my-project.git'
            }
        }


        stage('Terraform') {
            steps {
                sh 'terraform init'
                sh 'terraform plan'

                script {
                    if (params.ACTION == 'apply') {
                        sh 'terraform apply -auto-approve'
                    } else {
                        sh 'terraform destroy -auto-approve'
                    }
                }
            }
        }
    }
}
}
