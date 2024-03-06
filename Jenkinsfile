pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                // Compile the .cpp file using shell script
                sh 'bash build.sh'
            }
            post {
                success {
                    echo 'Build Stage Successful'
                }
                failure {
                    echo 'Build Stage Failed'
                    // Perform cleanup or additional actions on build failure
                }
            }
        }
        
        stage('Test') {
            steps {
                // Print output of .cpp file using shell script
                sh 'bash run.sh'
            }
            post {
                success {
                    echo 'Test Stage Successful'
                }
                failure {
                    echo 'Test Stage Failed'
                    // Perform cleanup or additional actions on test failure
                }
            }
        }
        
        stage('Deploy') {
            steps {
                // Perform deployment actions if needed
                // This stage is not specified in detail
            }
            post {
                success {
                    echo 'Deployment Successful'
                }
                failure {
                    echo 'Deployment Failed'
                    // Perform cleanup or additional actions on deployment failure
                }
            }
        }
    }
    
    post {
        failure {
            echo 'Pipeline failed'
        }
    }
}
