node {
    stage('Build') {
        checkout scm
        script {
            docker.image('node:16-buster-slim').inside {
                sh 'node -v'
                sh 'npm -v'
                sh 'npm install'
            }
        }
    }

    stage('Test') {
        script {
            docker.image('node:16-buster-slim').inside {
                sh './jenkins/scripts/test.sh'
            }
        }
    }
}
