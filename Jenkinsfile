pipeline{
    agent {
        node {
            label 'docker-agent-nodejs'
        }
    }
    triggers{
        pollSCM('H/1 * * * *')
    }
    stages{
        stage('Build'){
            steps{
                sh 'echo "Building application"'
                sh 'node --version'
                sh 'npm ci'
                sh 'npm build'
            }
        }
        stage('Test'){
            steps{
                sh 'echo "Testing application"'
                sh 'npm test'
            }
        }
        stage('Deploy'){
            steps{
                sh 'echo "Deploying application"'
                sh 'docker composed down'
                sh 'docker composed up -d server --build'
            }
        }
    }
}