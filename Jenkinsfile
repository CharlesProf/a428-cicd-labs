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

    stage('Deploy') {
        // ❗ JANGAN pakai docker.image di sini
        sh './jenkins/scripts/deliver.sh'

        input message: 'Sudah selesai menggunakan React App? (Klik "Proceed" untuk mengakhiri)'

        sh './jenkins/scripts/kill.sh'
    }
}
