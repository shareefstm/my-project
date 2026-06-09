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
                 
                    sh ''' 
                    cd applicationinfra
                    terraform init
                    terraform plan
                    terraform apply -auto-approve
                    '''
                
            }
        }
    }
}
