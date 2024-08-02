pipeline{
    agent {
        node {
            label 'docker-agent-ufam'
        }
    }
    triggers{
        pollSCM('* * * * *')
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
        stage('Lint'){
            steps{
                sh 'echo "Checking code style"'
                sh 'npm run lint'
            }
        }
    }
}