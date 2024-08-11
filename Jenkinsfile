pipeline{
    agent any
    triggers{
        githubPush()
    }

    stages{
        stage('Build'){
            steps{
                sh 'docker build -t aditbest5/flask-ml .'
            }
        }
        stage('Deliver'){
            steps {
                sh 'docker container rm --force flask-ml-container'
                sh 'docker run --name flask-ml-container -p  3000:3000 aditbest5/flask-ml &'
            }
        }
    }
    
    post {
        always {
            // Membersihkan container yang lama atau gagal, jika diperlukan
            sh 'docker container prune -f || true'
            sh 'docker image prune -f || true'

        }
    }
}