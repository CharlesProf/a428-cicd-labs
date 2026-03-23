pipeline {
    agent any

    stages {
        stage('Install Dependencies') {
            steps {
                script {
                    docker.image('node:16-buster-slim').inside {
                        sh 'node -v'
                        sh 'npm -v'
                        sh 'npm install'
                    }
                }
            }
        }
    }

    post {
        success {
            echo 'Build SUCCESS 🎉'
        }
        failure {
            echo 'Build FAILED ❌'
        }
        always {
            echo 'Pipeline selesai'
        }
    }
}