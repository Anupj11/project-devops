pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/Anupj11/project-devops.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t devops-static-site ./docker'
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    sh 'docker run -d -p 8081:80 --name webapp devops-static-site || true'
                }
            }
        }

        stage('Deploy via Ansible') {
            steps {
                sh '''
                cd Ansible
                ansible-playbook -i Hosts playbook.yml
                '''
            }
        }
    }

    post {
        success {
            echo 'Deployment successful!'
        }
        failure {
            echo 'Deployment failed.'
        }
    }
}

