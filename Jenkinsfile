pipeline{
    agent {
        node {
            label 'docker-agent-ufam'
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
                sh 'npm run build'
            }
        }
        stage('Test'){
            steps{
                sh 'echo "Testing application"'
                sh 'npm run test'
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