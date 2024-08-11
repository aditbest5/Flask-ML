pipeline {
    agent any
    triggers {
        githubPush()
    }

    stages {
        stage('Build') {
            steps {
                script {
                    // Membangun image Docker
                    sh 'docker build -t aditbest5/flask-ml .'
                }
            }
        }

        stage('Deliver') {
            steps {
                script {
                    // Menghentikan dan menghapus container yang berjalan, jika ada
                    sh 'docker container stop flask-ml-container || true'
                    sh 'docker container rm flask-ml-container || true'
                    
                    // Menjalankan container baru dalam mode detached (-d)
                    sh 'docker run -d --name flask-ml-container -p 3000:3000 aditbest5/flask-ml'
                }
            }
        }
    }

    post {
        always {
            script {
                // Membersihkan image yang tidak digunakan
                sh 'docker image prune -f || true'
            }
        }
    }
}
