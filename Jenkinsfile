pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                script {
                    // Replace 'main.cpp' with the correct name of your C++ file
                    sh 'g++ working.cpp -o output'
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    sh './output'
                }
            }
        }
        stage('Deploy') {
            steps {
                echo 'deploy'
            }
        }
    }
    post {
        failure {
            error 'Pipeline failed'
     }
  }
}