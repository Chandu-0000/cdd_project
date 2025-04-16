pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID     = credentials('aws-access-key-id')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/Chandu-0000/cdd_project.git'
            }
        }

        stage('Terraform Init') {
    steps {
        sh 'terraform init'
    }
}
stage('Terraform Plan') {
    steps {
        sh 'terraform plan'
    }
}
stage('Terraform Apply') {
    steps {
        sh 'terraform apply -auto-approve'
    }
}

    }
}
