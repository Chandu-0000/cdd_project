pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID = credentials('AKIA6K5V7VNWAV42KBXQ')
        AWS_SECRET_ACCESS_KEY = credentials('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')
    }

    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/Chandu-0000/cdd_project.git'
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
