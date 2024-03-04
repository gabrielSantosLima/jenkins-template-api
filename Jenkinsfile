pipeline{
    agent {
        node {
            label 'docker-agent-nodejs'
        }
    }
    triggers{
        cron('H/2 * * * *')
    }
    stages{
        stage('Build'){
            steps{
                sh 'echo "Building application"'
            }
        }
        stage('Test'){
            steps{
                sh 'echo "Testing application"'
            }
        }
        stage('Deploy'){
            steps{
                sh 'echo "Deploying application"'
            }
        }
    }
}